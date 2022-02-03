using Case_Management_System.Data;
using Case_Management_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case_Management_System.Utilities
{
    internal interface IStatusUtility
    {
        bool CreateStatus(string statusName);
        IEnumerable<Status> GetAllStatus();

    }

    internal class StatusUtility : IStatusUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateStatus(string statusName)
        {
            var status = _context.Statuses.Where(x => x.StatusName == statusName).FirstOrDefault();
            if(status == null)
            {
                _context.Statuses.Add(new Status
                {
                    StatusName = statusName,
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public IEnumerable<Status> GetAllStatus()
        {
            return _context.Statuses.OrderBy(p => p.Id);
        }
    }
}
