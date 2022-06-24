using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormApp.Models
{
    public class User
    {
        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string UserName { get; set; }

        public string Password { get; set; }

        public string ConfirmPassword { get; set; }

        public string Gender { get; set; }

        public string Address { get; set; }

        public string Email { get; set; }
        public User()
        {

        }

        public User(string firstName, string lastName, string userName, string password, string confirmPassword, string gender, string address, string email)
        {
            FirstName = firstName;
            LastName = lastName;
            UserName = userName;
            Password = password;
            ConfirmPassword = confirmPassword;
            Gender = gender;
            Address = address;
            Email = email;
        }
    }

}