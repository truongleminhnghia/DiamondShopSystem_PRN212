using DiamondShopSys.Data.Base;
using DiamondShopSys.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiamondShopSys.Data.Repository
{
    public class CompanyRepository : GenericRepository<Company>
    {
        public CompanyRepository()
        {
        }

        public CompanyRepository(Net1804_2121_DiamondShopSystemV2Context context) => _context = context;
    }
}
