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
        public List<Flower> AllSeasonalFlowers = new List<Flower>();

        public List<Flower> AllLowFlowers = new List<Flower>();

        public void OnGet()
        {
            AllSeasonalFlowers = Database.GetAllSeasonal();
            AllLowFlowers = Database.GetLowFlowers(1);
        }

        public void  OnPostLocation(int location_id)
        {
            Console.WriteLine(location_id);
            Database.GetLowFlowers(location_id);

            AllLowFlowers = Database.GetLowFlowers(location_id);
            AllSeasonalFlowers = Database.GetAllSeasonal();

            //return RedirectToPage("./Dashboard");
        }
    }
}
