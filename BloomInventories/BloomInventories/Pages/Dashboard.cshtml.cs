using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using BloomInventories.Models;
using BloomInventories.Services;

namespace BloomInventories.Pages
{
	public class DashboardModel : PageModel
    {
        public int location =1;

        public List<Flower> AllSeasonalFlowers = new List<Flower>();

        public List<Flower> AllLowFlowers = new List<Flower>();
        public int SubscriberCount = 0;

        public List<Recipe> RandomBouquet = new List<Recipe>();

        public void OnGet()
        {
            AllSeasonalFlowers = Database.GetAllSeasonal();
            AllLowFlowers = Database.GetLowFlowers(1);
            SubscriberCount = Database.GetSubscriberCount();
            RandomBouquet = Database.GetRandomBouquet();
        }

        public void  OnPostLocation(int location_id)
        {
            Console.WriteLine(location_id);
            Database.GetLowFlowers(location_id);
            location = location_id;

            AllLowFlowers = Database.GetLowFlowers(location_id);
            AllSeasonalFlowers = Database.GetAllSeasonal();

            //return RedirectToPage("./Dashboard");
        }
    }
}
