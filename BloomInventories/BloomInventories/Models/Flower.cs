using System;
namespace BloomInventories.Models
{
	public class Flower
	{
		public string id { get; set; } = string.Empty;
		public string Name { get; set; } = string.Empty;
		public string Category { get; set; } = string.Empty;

        //the category can be changed
		private int quantity;

        public int Quantity
        {
            get
            {
                return quantity;
            }
            set
            {
                if (value > 0)
                    quantity = value;
                else
                    quantity = 0;
            }
        }

        public string ImgUrl { get; set; } = string.Empty;
        public int Lifespan { get; set; }
        public string Expired { get; set; } = string.Empty;
        public int Location_id { get; set; }


        public Flower(int value)
		{
            quantity = value;
		}
	}
}

