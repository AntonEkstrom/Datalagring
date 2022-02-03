using Case_Management_System.Data;
using Case_Management_System.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case_Management_System.Utilities
{
    internal interface ICaseUtility
    {
        bool CreateCase(string headline, string description, DateTime dateTime, int userId, int statusId);
       
    }

    internal class CaseUtility : ICaseUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateCase(string headline, string description, DateTime dateTime, int userId, int statusId)
        {
            var Case = _context.Cases.Where(x => x.HeadLine == headline).FirstOrDefault();
            if (Case == null)
            { 
                _context.Cases.Add(new Case
                {
                    HeadLine = headline,
                    Description = description,
                    DateTime = dateTime,
                    UserId = userId,
                    StatusId = statusId,
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }

      
    }
}
