<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop — Premium UI</title>

```
<!-- Fonts & Icons -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
    :root {
        --primary: #0f172a;
        --accent: #6366f1;
        --bg: #f8fafc;
        --card: #ffffff;
        --muted: #64748b;
        --radius: 16px;
    }

    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: 'Inter', sans-serif;
        background: linear-gradient(to bottom, #f8fafc, #eef2ff);
        color: var(--primary);
    }

    .container {
        max-width: 1200px;
        margin: auto;
        padding: 20px;
    }

    /* HEADER */
    header {
        position: sticky;
        top: 0;
        z-index: 10;
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 20px;
        backdrop-filter: blur(12px);
        background: rgba(255, 255, 255, 0.7);
    }

    .brand {
        font-family: 'Poppins', sans-serif;
        font-size: 22px;
        font-weight: 700;
    }

    .brand span {
        color: var(--accent);
    }

    .search {
        display: flex;
        align-items: center;
        gap: 8px;
        background: #fff;
        padding: 8px 12px;
        border-radius: 50px;
    }

    .search input {
        border: none;
        outline: none;
    }

    .icons i {
        margin-left: 12px;
        cursor: pointer;
    }

    /* HERO */
    .hero {
        background: linear-gradient(135deg, #0f172a, #1e293b);
        color: white;
        text-align: center;
        padding: 80px 20px;
        border-radius: 0 0 40px 40px;
    }

    .hero h1 {
        font-size: 42px;
        margin-bottom: 10px;
    }

    /* GRID */
    .grid {
        display: grid;
        gap: 20px;
    }

    /* CATEGORIES */
    .categories {
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    }

    .cat-card {
        padding: 20px;
        text-align: center;
        border-radius: 18px;
        background: linear-gradient(135deg, #ffffff, #f1f5f9);
        transition: 0.3s;
        cursor: pointer;
    }

    .cat-card:hover {
        transform: translateY(-8px);
        background: linear-gradient(135deg, #6366f1, #8b5cf6);
        color: white;
    }

    /* PRODUCTS */
    .products {
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    }

    .product {
        background: white;
        border-radius: 20px;
        overflow: hidden;
        transition: 0.3s;
        position: relative;
    }

    .product:hover {
        transform: translateY(-10px);
        box-shadow: 0 25px 50px rgba(0, 0, 0, 0.1);
    }

    .product img {
        width: 100%;
        height: 200px;
        object-fit: cover;
        transition: 0.4s;
    }

    .product:hover img {
        transform: scale(1.1);
    }

    .product-body {
        padding: 15px;
    }

    .price {
        font-weight: 700;
    }

    .add-btn {
        width: 100%;
        padding: 10px;
        border: none;
        background: var(--primary);
        color: white;
        cursor: pointer;
        border-radius: 10px;
        margin-top: 10px;
    }

    .add-btn:hover {
        background: var(--accent);
    }

    /* WISHLIST BUTTON */
    .floating-wish {
        position: absolute;
        top: 10px;
        right: 10px;
        background: white;
        border: none;
        padding: 10px;
        border-radius: 50%;
        box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
        cursor: pointer;
    }

    /* DEAL */
    .deal {
        margin-top: 30px;
        background: linear-gradient(135deg, #1e293b, #0f172a);
        color: white;
        padding: 30px;
        border-radius: 20px;
        text-align: center;
    }

    /* FOOTER */
    footer {
        text-align: center;
        padding: 30px;
        color: var(--muted);
    }
</style>
```

</head>

<body>

```
<!-- HEADER -->
<header>
    <div class="brand">Nexus<span>Shop</span></div>

    <div class="search">
        <input type="text" placeholder="Search products...">
        <i class="fas fa-search"></i>
    </div>

    <div class="icons">
        <i class="fas fa-user"></i>
        <i class="fas fa-heart"></i>
        <i class="fas fa-shopping-cart"></i>
    </div>
</header>

<!-- HERO -->
<section class="hero">
    <h1>Luxury Collection 2026 ✨</h1>
    <p>Upgrade your lifestyle with premium fashion & gadgets</p>
</section>

<div class="container">

    <!-- CATEGORIES -->
    <h2>Categories</h2>
    <div class="grid categories" id="categories"></div>

    <!-- PRODUCTS -->
    <h2>Products</h2>
    <div class="grid products" id="products"></div>

    <!-- DEAL -->
    <div class="deal">
        <h2>Flash Sale 🔥</h2>
        <p>MacBook Air M2 — Only $999</p>
    </div>

</div>

<!-- FOOTER -->
<footer>
    © 2026 NexusShop. All rights reserved.
</footer>

<script>
    const categories = ["Phones", "Laptops", "Clothing", "Shoes", "Gadgets"];

    const products = [
        {
            title: "iPhone 14",
            price: 999,
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"
        },
        {
            title: "MacBook Pro",
            price: 1999,
            img: "https://images.unsplash.com/photo-1593642632823"
        },
        {
            title: "Nike Shoes",
            price: 150,
            img: "https://images.unsplash.com/photo-1542272604"
        },
        {
            title: "Headphones",
            price: 299,
            img: "https://images.unsplash.com/photo-1600185365483"
        }
    ];

    const catEl = document.getElementById("categories");
    categories.forEach(cat => {
        catEl.innerHTML += `<div class="cat-card">${cat}</div>`;
    });

    const prodEl = document.getElementById("products");
    products.forEach(p => {
        prodEl.innerHTML += `
            <div class="product">
                <button class="floating-wish">
                    <i class="far fa-heart"></i>
                </button>
                <img src="${p.img}" alt="${p.title}">
                <div class="product-body">
                    <h4>${p.title}</h4>
                    <div class="price">$${p.price}</div>
                    <button class="add-btn">Add to Cart</button>
                </div>
            </div>
        `;
    });
</script>
```

</body>

</html>
