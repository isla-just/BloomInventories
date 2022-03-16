using System;
using BloomInventories.Services;

namespace BloomInventories.Models
{
	public class Inventory
	{
        public List<Flower> Flowers = new List<Flower>();

        public Inventory()
		{
			Flowers = Database.GetAllFlowers();
		}

		public void UpdateQuantity(string name, int quantity)
		{
			Database.UpdateFlowerQuantity(name, quantity);
		}
	}
}

