using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace VillaggioTuristico.Commons
{
    public class ConstantValues
    {
        //connection strings
        public const string AuthDB = "AuthDB";

        public const string OK = "OK";
        public const string NotFound = "Not found";
        public const string AllFieldsRequired = "All the fields are required !";
        public const string TextCantBeLonger = "The text can't be longer than {0} characters";
        public const int maxTextRecapLength = 300;
        public const int indexPageSize = 10;
        public const int pageSize = 20;
        public const int searchPageSize = 20;
        public const int UserProfilePageSize = 20;
        public const int PasswordMinLenght = 6;
    }
}
