function Navbar() {
  return (
    <nav>
      <h2>FashionKart</h2>

      <div>
        <a href="#">Men</a>
        <a href="#">Women</a>
        <a href="#">Kids</a>
        <a href="#">Beauty</a>
      </div>

      <input
        type="text"
        placeholder="Search for products..."
      />

      <button>Bag</button>
    </nav>
  );
}

export default Navbar;