using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace Storetojson
{
    public class Section
    {

        public string Name { get; set; }
        public List<Item> items { get; set; }



    }




    public class Item
    {
        private string title;
        public String Title
        {
            get
            {
                return title;
            }
            set
            {
                title = value;

            }
        }



        private string format;
        public String Format
        {
            get
            {
                return format;
            }
            set
            {
                format = value;
            }

        }



        private string mergeName;
        public String MergeName
        {
            get
            {
                return mergeName;
            }
            set
            {
                mergeName = value;
            }

        }


        private string values;
        public String Values
        {
            get
            {
                return values;
            }
            set
            {
                values = value;

            }
        }



    }
}
