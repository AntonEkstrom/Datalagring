using Case_Management_System.Data;
using Case_Management_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Case_Management_System.Utilities
{
    internal interface IUserUtility
    {
        bool CreateUser(string firstname, string lastname, string email, string phonenumber, string streetname, string postalcode, string city, string country);
        IEnumerable<User> GetAllUsers();
    }

    internal class UserUtility : IUserUtility
    {
        private readonly SqlContext _context = new SqlContext();

        public bool CreateUser(string firstname, string lastname, string email, string phonenumber, string streetname, string postalcode, string city, string country)
        {
            var user = _context.Users.Where(x => x.Email == email).FirstOrDefault();
            if (user == null)
            {
                _context.Users.Add(new User
                {
                    FirstName = firstname,
                    LastName = lastname,
                    Email = email,
                    PhoneNumber = phonenumber,
                    StreetName = streetname,
                    PostalCode = postalcode,
                    City = city,
                    Country = country
                });
                _context.SaveChanges();
                return true;
            }
            return false;
        }

        public IEnumerable<User> GetAllUsers()
        {
            return _context.Users.OrderByDescending(p => p.Id);
        }


    }
}
