let categories = {};
let vehicles = {};
let currentCategory = null;
let currentBrand = null;
let sortOrder = "asc";
let currentSort = "name";
let testDriveVeh = null;
let inTestDrive = false;
let brandLogos = {};
let vehiclesCache = {};
let vehicleListCache = null;
let previousSearchTerm = "";
let previousSortSettings = {};
let observer = null;
let loadedVehicleIds = new Set();

// Timer handling
function showTestDriveTimer(show) {
  const timer = document.querySelector(".test-drive-timer");
  timer.style.display = show ? "flex" : "none";
  if (show) {
    timer.classList.add("active");
    // Reset timer display
    const timerElement = document.querySelector(".timer-seconds");
    timerElement.style.color = "var(--text)";
    timerElement.textContent = "30";
  } else {
    timer.classList.remove("active");
  }
}

function updateTimerDisplay(seconds) {
  const timerElement = document.querySelector(".timer-seconds");
  if (seconds <= 10) {
    timerElement.style.color = "#ef4444";
  }
  timerElement.textContent = seconds.toString().padStart(2, "0");
}

// Sort handling - Using memoization
function sortVehicles(vehicleList, field = "name", order = "asc") {
  const cacheKey = `${field}-${order}-${vehicleList.length}`;

  // Check if we've sorted this exact list with these parameters before
  if (
    previousSortSettings.cacheKey === cacheKey &&
    previousSortSettings.result
  ) {
    return previousSortSettings.result;
  }

  const sortedList = [...vehicleList].sort((a, b) => {
    let comparison = 0;
    switch (field) {
      case "price":
        comparison = a.price - b.price;
        break;
      case "name":
        comparison = a.name.localeCompare(b.name);
        break;
      case "brand":
        comparison = a.brand.localeCompare(b.brand);
        break;
    }
    return order === "asc" ? comparison : -comparison;
  });

  // Store the result in cache
  previousSortSettings = {
    cacheKey: cacheKey,
    result: sortedList,
  };

  return sortedList;
}

// Search and filter with caching
function filterVehicles(searchTerm) {
  // Use cached vehicle list when same search criteria
  if (searchTerm === previousSearchTerm && vehicleListCache) {
    return vehicleListCache;
  }

  // Get base vehicle list based on category and brand
  let filteredVehicles;
  const cacheKey = `${currentCategory}-${currentBrand || "all"}`;

  if (vehiclesCache[cacheKey]) {
    filteredVehicles = vehiclesCache[cacheKey];
  } else {
    filteredVehicles =
      currentCategory === "all"
        ? Object.values(vehicles).flatMap((category) => Object.values(category))
        : Object.values(vehicles[currentCategory] || {});

    if (currentBrand) {
      filteredVehicles = filteredVehicles.filter(
        (vehicle) => vehicle.brand === currentBrand,
      );
    }

    // Cache this result for future use
    vehiclesCache[cacheKey] = filteredVehicles;
  }

  if (!searchTerm) {
    previousSearchTerm = "";
    vehicleListCache = filteredVehicles;
    return filteredVehicles;
  }

  // Apply search filter
  const results = filteredVehicles.filter(
    (vehicle) =>
      vehicle.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
      vehicle.brand.toLowerCase().includes(searchTerm.toLowerCase()) ||
      vehicle.category.toLowerCase().includes(searchTerm.toLowerCase()),
  );

  // Cache the results
  previousSearchTerm = searchTerm;
  vehicleListCache = results;

  return results;
}

// Brand filtering
function setupBrandFilters() {
  const brands = new Set();
  Object.values(vehicles).forEach((category) => {
    Object.values(category).forEach((vehicle) => {
      brands.add(vehicle.brand);
    });
  });

  const brandSelect = document.getElementById("brandSelect");
  brandSelect.innerHTML = '<option value="">All Brands</option>';

  // Create document fragment for better performance
  const fragment = document.createDocumentFragment();

  // Add individual brand options
  Array.from(brands)
    .sort()
    .forEach((brand) => {
      const option = document.createElement("option");
      option.value = brand;
      option.textContent = brand;
      fragment.appendChild(option);
    });

  brandSelect.appendChild(fragment);

  // Add change event listener
  brandSelect.addEventListener("change", (e) => {
    const selectedBrand = e.target.value;
    filterByBrand(selectedBrand || null);
  });
}

function filterByBrand(brand) {
  // Clear caches when changing filters
  vehicleListCache = null;
  previousSearchTerm = "";

  currentBrand = brand;

  // Update counter text based on brand
  const counterText = document.querySelector(".vehicle-counter");
  if (brand) {
    counterText.innerHTML =
      '<span id="vehicleCount">0</span> vehicles from <strong>' +
      brand +
      "</strong>";
    if (currentCategory !== "all") {
      counterText.innerHTML =
        '<span id="vehicleCount">0</span> ' +
        brand +
        " vehicles in <strong>" +
        categories[currentCategory] +
        "</strong>";
    }
  } else if (currentCategory !== "all") {
    counterText.innerHTML =
      '<span id="vehicleCount">0</span> vehicles in <strong>' +
      categories[currentCategory] +
      "</strong>";
  } else {
    counterText.innerHTML =
      '<span id="vehicleCount">0</span> vehicles available';
  }

  const searchTerm = document.getElementById("searchInput").value.trim();
  const filteredVehicles = filterVehicles(searchTerm);
  displayVehicles(sortVehicles(filteredVehicles, currentSort, sortOrder));
}

// Setup functions
function setupSearch() {
  const searchInput = document.getElementById("searchInput");
  let debounceTimeout;

  searchInput.addEventListener("input", (e) => {
    clearTimeout(debounceTimeout);
    debounceTimeout = setTimeout(() => {
      const searchTerm = e.target.value.trim();

      // Update counter text for search
      const counterText = document.querySelector(".vehicle-counter");
      if (searchTerm) {
        counterText.innerHTML =
          '<span id="vehicleCount">0</span> results for <strong>"' +
          searchTerm +
          '"</strong>';
      } else {
        // Reset to default counter based on current category/brand
        if (currentBrand) {
          counterText.innerHTML =
            '<span id="vehicleCount">0</span> vehicles from <strong>' +
            currentBrand +
            "</strong>";
          if (currentCategory !== "all") {
            counterText.innerHTML =
              '<span id="vehicleCount">0</span> ' +
              currentBrand +
              " vehicles in <strong>" +
              categories[currentCategory] +
              "</strong>";
          }
        } else if (currentCategory !== "all") {
          counterText.innerHTML =
            '<span id="vehicleCount">0</span> vehicles in <strong>' +
            categories[currentCategory] +
            "</strong>";
        } else {
          counterText.innerHTML =
            '<span id="vehicleCount">0</span> vehicles available';
        }
      }

      const filteredVehicles = filterVehicles(searchTerm);
      displayVehicles(sortVehicles(filteredVehicles, currentSort, sortOrder));
    }, 300);
  });
}

function setupSorting() {
  const sortSelect = document.getElementById("sortSelect");
  sortSelect.addEventListener("change", (e) => {
    const [field, order] = e.target.value.split("-");
    currentSort = field;
    sortOrder = order;

    // Reset sort cache when changing sort options
    previousSortSettings = {};

    const searchTerm = document.getElementById("searchInput").value.trim();
    const filteredVehicles = filterVehicles(searchTerm);
    displayVehicles(sortVehicles(filteredVehicles, currentSort, sortOrder));
  });
}

function setupCategories() {
  const categoriesDiv = document.querySelector(".categories");
  categoriesDiv.innerHTML = "";

  // Create document fragment for better performance
  const fragment = document.createDocumentFragment();

  // Add "All Vehicles" category
  const allBtn = document.createElement("button");
  allBtn.className = "category-btn active";
  allBtn.textContent = "All Vehicles";
  allBtn.onclick = () => showCategory("all");
  fragment.appendChild(allBtn);

  // Add other categories
  Object.entries(categories).forEach(([key, name]) => {
    const btn = document.createElement("button");
    btn.className = "category-btn";
    btn.textContent = name;
    btn.onclick = () => showCategory(key);
    fragment.appendChild(btn);
  });

  categoriesDiv.appendChild(fragment);
}

function showCategory(categoryKey) {
  // Clear caches when changing category
  vehicleListCache = null;
  previousSearchTerm = "";
  vehiclesCache = {};
  previousSortSettings = {};

  currentCategory = categoryKey;

  // Update counter text based on category
  const counterText = document.querySelector(".vehicle-counter");
  if (categoryKey === "all") {
    counterText.innerHTML =
      '<span id="vehicleCount">0</span> vehicles available';
  } else {
    counterText.innerHTML =
      '<span id="vehicleCount">0</span> vehicles in <strong>' +
      categories[categoryKey] +
      "</strong>";
  }

  // Update active category button
  document.querySelectorAll(".category-btn").forEach((btn) => {
    btn.classList.remove("active");
    if (
      (categoryKey === "all" && btn.textContent.trim() === "All Vehicles") ||
      (categories[categoryKey] &&
        btn.textContent.trim() === categories[categoryKey])
    ) {
      btn.classList.add("active");
    }
  });

  const vehicleList =
    categoryKey === "all"
      ? Object.values(vehicles).flatMap((category) => Object.values(category))
      : Object.values(vehicles[categoryKey] || {});

  displayVehicles(sortVehicles(vehicleList, currentSort, sortOrder));
}

function displayVehicles(vehicleList) {
  // Update the vehicle counter
  const countElement = document.getElementById("vehicleCount");
  countElement.textContent = vehicleList.length;

  const grid = document.querySelector(".vehicle-grid");
  grid.innerHTML = "";
  loadedVehicleIds.clear();

  // Disconnect previous observer if exists
  if (observer) {
    observer.disconnect();
  }

  // Create a document fragment for better performance
  const fragment = document.createDocumentFragment();

  // Create cards for all vehicles but with placeholder content
  vehicleList.forEach((vehicle, index) => {
    const card = document.createElement("div");
    card.className = "vehicle-card";
    card.id = `vehicle-${index}`;
    card.dataset.vehicleIndex = index;

    // Set placeholder content (minimal)
    card.innerHTML = `
            <div class="vehicle-placeholder" style="height: 160px; background: #f0f0f0;"></div>
            <div class="vehicle-info-container">
                <h3 class="vehicle-name">${vehicle.name}</h3>
                <p class="vehicle-price">$${vehicle.price.toLocaleString()}</p>
            </div>
        `;

    card.onclick = () => {
      // Ensure vehicle data is loaded before showing details
      loadVehicleData(card, vehicle);
      showVehicleInfo(
        vehicle,
        `https://docs.fivem.net/vehicles/${vehicle.model.toLowerCase()}.webp`,
      );
    };

    fragment.appendChild(card);
  });

  // Append all placeholders to the DOM
  grid.appendChild(fragment);

  // Setup Intersection Observer for lazy loading
  observer = new IntersectionObserver(
    (entries, observer) => {
      entries.forEach((entry) => {
        if (entry.isIntersecting) {
          const card = entry.target;
          const index = parseInt(card.dataset.vehicleIndex);
          const vehicle = vehicleList[index];

          // Load the actual vehicle data
          loadVehicleData(card, vehicle);

          // Stop observing this element
          observer.unobserve(card);
        }
      });
    },
    {
      root: null,
      rootMargin: "200px", // Load images 200px before they come into view
      threshold: 0.1,
    },
  );

  // Start observing all cards
  document.querySelectorAll(".vehicle-card").forEach((card) => {
    observer.observe(card);
  });
}

// Helper function to load actual vehicle data
function loadVehicleData(card, vehicle) {
  const vehicleId = vehicle.model;

  // If already loaded, don't reload
  if (loadedVehicleIds.has(vehicleId)) {
    return;
  }

  // Use external URL for vehicle images
  const imageUrl = `https://docs.fivem.net/vehicles/${vehicle.model.toLowerCase()}.webp`;

  // Use local path for brand logos
  const brandLogoUrl = `nui://qr-vehicleshop/html/assets/carbrands/${vehicle.brand.toLowerCase()}.webp`;

  // Replace placeholder with actual content
  card.innerHTML = `
        <div class="vehicle-image" style="background-image: url('${imageUrl}')"></div>
        <div class="vehicle-info-container">
            <h3 class="vehicle-name">${vehicle.name}</h3>
            <div class="vehicle-brand">
                <img src="${brandLogoUrl}" alt="${vehicle.brand}" width="20" height="20" loading="lazy">
                <span>${vehicle.brand}</span>
            </div>
            <p class="vehicle-price">$${vehicle.price.toLocaleString()}</p>
        </div>
    `;

  // Mark this vehicle as loaded
  loadedVehicleIds.add(vehicleId);
}

function showVehicleInfo(vehicle, imageUrl) {
  const info = document.querySelector(".vehicle-info");
  info.classList.remove("hidden");

  // Use the local path for the brand logo
  const brandLogoUrl = `nui://qr-vehicleshop/html/assets/carbrands/${vehicle.brand.toLowerCase()}.webp`;

  info.innerHTML = `
        <button class="close-btn" onclick="closeVehicleInfo()">×</button>
        <div class="vehicle-image" style="background-image: url('${imageUrl}')"></div>
        <img class="brand-logo" src="${brandLogoUrl}" alt="${vehicle.brand}" loading="lazy">
        <h2 class="vehicle-name">${vehicle.name}</h2>
        <div class="vehicle-details">
            <div class="stat">
                <span>Brand</span>
                <span>${vehicle.brand}</span>
            </div>
            <div class="stat">
                <span>Price</span>
                <span>$${vehicle.price.toLocaleString()}</span>
            </div>
            <div class="stat">
                <span>Category</span>
                <span>${categories[vehicle.category]}</span>
            </div>
        </div>
        <div class="vehicle-actions">
            <button class="test-drive-btn" onclick="startTestDrive('${vehicle.model}')">Test Drive</button>
            <button class="buy-btn" onclick="buyVehicle('${vehicle.model}', ${vehicle.price})">Purchase</button>
        </div>
    `;
}

function closeVehicleInfo() {
  document.querySelector(".vehicle-info").classList.add("hidden");
}

function startTestDrive(model) {
  if (!inTestDrive) {
    showTestDriveTimer(true);
    inTestDrive = true;

    fetch(`https://${GetParentResourceName()}/testDrive`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ model }),
    }).catch(() => {});

    document.getElementById("container").classList.add("hidden");
    closeVehicleInfo();
  }
}

function buyVehicle(model, price) {
  fetch(`https://${GetParentResourceName()}/buyVehicle`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ model, price }),
  }).catch(() => {});
  document.getElementById("container").classList.add("hidden");
  closeVehicleInfo();
}

// Event listeners
window.addEventListener("message", function (event) {
  switch (event.data.action) {
    case "open":
      document.getElementById("container").classList.remove("hidden");
      categories = event.data.categories;
      vehicles = event.data.vehicles;

      // Clear all caches when opening shop
      vehiclesCache = {};
      vehicleListCache = null;
      previousSearchTerm = "";
      previousSortSettings = {};

      // Reset lazy loading state
      if (observer) {
        observer.disconnect();
        observer = null;
      }
      loadedVehicleIds.clear();

      setupCategories();
      setupBrandFilters();
      setupSearch();
      setupSorting();
      showCategory("all");
      // Reset test drive state when opening shop
      inTestDrive = false;
      showTestDriveTimer(false);
      break;

    case "updateTestDriveTime":
      showTestDriveTimer(true);
      updateTimerDisplay(event.data.time);
      break;

    case "testDriveEnded":
      inTestDrive = false;
      showTestDriveTimer(false);
      break;

    case "resetTestDrive":
      inTestDrive = false;
      showTestDriveTimer(false);
      break;

    case "openDealerMenu":
      openDealerMenu(event.data.categories);
      break;

    case "updateVehicles":
      // Update the vehicles object with dealer added vehicles
      Object.assign(vehicles, event.data.dealerVehicles);
      // Clear caches
      vehiclesCache = {};
      vehicleListCache = null;
      previousSearchTerm = "";
      previousSortSettings = {};
      // Reset lazy loading
      if (observer) {
        observer.disconnect();
        observer = null;
      }
      loadedVehicleIds.clear();
      // Refresh the display
      showCategory(currentCategory);
      break;
  }
});

function openDealerMenu(categories) {
  const container = document.getElementById("container");
  container.classList.remove("hidden");

  // Check if dealer form already exists
  if (document.querySelector(".dealer-form")) {
    return;
  }

  const dealerForm = document.createElement("div");
  dealerForm.className = "dealer-form";

  // Build option list once for better performance
  const categoryOptions = Object.entries(categories)
    .map(([key, name]) => `<option value="${key}">${name}</option>`)
    .join("");

  dealerForm.innerHTML = `
        <h2>Add Vehicle to Stock</h2>
        <form id="addVehicleForm">
            <input type="text" id="vehicleName" placeholder="Vehicle Name" required>
            <input type="text" id="vehicleModel" placeholder="Spawn Code" required>
            <input type="number" id="vehiclePrice" placeholder="Price" required min="1">
            <input type="text" id="vehicleBrand" placeholder="Brand" required>
            <select id="vehicleCategory" required>
                <option value="">Select Category</option>
                ${categoryOptions}
            </select>
            <button type="submit">Add Vehicle</button>
        </form>
    `;

  container.appendChild(dealerForm);

  document
    .getElementById("addVehicleForm")
    .addEventListener("submit", function (e) {
      e.preventDefault();

      const vehicleData = {
        name: document.getElementById("vehicleName").value,
        model: document.getElementById("vehicleModel").value,
        price: parseInt(document.getElementById("vehiclePrice").value),
        brand: document.getElementById("vehicleBrand").value,
        category: document.getElementById("vehicleCategory").value,
      };

      fetch(`https://${GetParentResourceName()}/addVehicle`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(vehicleData),
      }).catch(() => {});

      // Reset form
      e.target.reset();
    });
}

document.addEventListener("keydown", function (event) {
  if (event.key === "Escape") {
    document.getElementById("container").classList.add("hidden");
    fetch(`https://${GetParentResourceName()}/close`, {
      method: "POST",
    }).catch(() => {});
  }
});

// Clean up when window unloads to prevent memory leaks
window.addEventListener("beforeunload", function () {
  if (observer) {
    observer.disconnect();
    observer = null;
  }
});
