using System;
using BloomInventories.Services;

namespace BloomInventories.Models
{
	public class Inventory
	{
        public List<Flower> Flowers = new List<Flower>();

        public Inventory(int location_id)
		{
			Flowers = Database.GetAllFlowers(location_id);
		}

		public void UpdateQuantity(string name, int quantity, int location_id)
		{
			Console.WriteLine(location_id);
			Database.UpdateFlowerQuantity(name, quantity, location_id);
		}


		public int GetCount(string name)
		{
			foreach (var flower in Flowers)
			{
				if (flower.Name == name)
				{
					return flower.Quantity;
				}
			}
			return -1;
		}
	}
}

