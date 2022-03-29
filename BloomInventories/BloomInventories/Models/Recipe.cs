using System;
using BloomInventories.Interfaces;

namespace BloomInventories.Models
{
	public class Recipe : Craftable
	{

        //properties
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Category { get; set; } = string.Empty;

        //parse the quantity through the constructor just like in flowers
        private int quantity;

        public int Quantity { get { return quantity; } }

        public string ImgUrl { get; set; } = string.Empty;
        public int Price { get; set; }
        public int location_id { get; set; }

        public List<string> Materials { get; set; }

        //constructor
        public Recipe(int newQuantity)
        {
            quantity = newQuantity;
        }



        public bool IsCraftable()
        {
            //dictionalry of all our ingredients
            var map = new Dictionary<string, int>();
            foreach (var material in Materials)
            {
                if (material != "")//checks if null
                {
                    int quantity;
                    if (map.TryGetValue(material, out quantity))
                    {
                        //increemnt the cont
                        map[material] += 1;

                    }
                    else // if we havent added the ingredient to the dictionary 
                    {
                        map.Add(material, 1);
                    }
                }

            }

            bool result = true;
            var inventory = new Inventory(location_id);

            //loop through our ingredient dicttionary to check if it is craftable
            foreach (var pair in map)
            {
                if (pair.Value > inventory.GetCount(pair.Key))
                {
                    result = false;
                    //not craftable
                }
            }
            return result;

        }

    }
}

