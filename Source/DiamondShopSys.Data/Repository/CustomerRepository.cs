
using DiamondShopSys.Data.Base;
using DiamondShopSys.Data.Models;
using DiamondShopSystem.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiamondShopSys.Data.Repository
{
    public class CustomerRepository : GenericRepository<Customer>
    {
        public CustomerRepository() 
        {
        }

        public CustomerRepository(Net1804_2121_DiamondShopSystemV2Context context) => _context = context;

    }
}
