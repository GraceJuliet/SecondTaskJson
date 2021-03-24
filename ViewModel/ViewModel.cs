using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Text;
using System.Windows;

namespace Storetojson
{
    class ViewModel : INotifyPropertyChanged
    {
      
        Section sc;
        Item it;
        Mainsection mainsectionobj;

        public RelayCommand cmd { get; set; }
        public ViewModel()
        {
            cmd = new RelayCommand(Canexecute, CanUse);
            sc = new Section();
            sc.items = new List<Item>();
            it = new Item();
           
            FlagsAttribute = 0;
           
            mainsectionobj = new Mainsection();
            mainsectionobj.Sections = new List<Section>();
           
        }  
        private string Subheadername1;
        public string SubheaderName1
        {
            get
            {
                return Subheadername1;
            }
            set
            {
                Subheadername1 = value;
                OnPropertyChanged("SubheaderName1");
            }

        }

            


        private string title;
        public String Title { 
          get { return title;
                 }
           set { title = value;
                OnPropertyChanged("Title");
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
                OnPropertyChanged("Format");
            }
        }



        private string mergename;
        public String Mergename
        {
            get
            {
                return mergename;
            }
            set
            {
                mergename = value;
                OnPropertyChanged("Mergename");
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
                OnPropertyChanged("Values");
            }
        }

        public int FlagsAttribute { get; private set; }

        public event PropertyChangedEventHandler PropertyChanged;





        public void Canexecute(object param)
        {
            if (param.ToString() == "Addrecord")
            {
                AddSectionRecord();
            }

            else if (param.ToString() == "Saverecord")
                SaveSectionRecord();

            else if (param.ToString() == "Clear")
            { 
               
            Title = "";
            Format = "";
            Mergename = "";
            Values = "";
                }
           
        }
        
        public void SaveSectionRecord()
        {

            it.Title = this.Title;
            it.Format = this.Format;
            it.MergeName = this.Mergename;
            it.Values = this.Values;
            sc.Name= this.SubheaderName1;
            sc.items.Add(it);
            mainsectionobj.Sections.Add(sc);
            MessageBox.Show("Record Saved Successfully");

        }
        public void AddSectionRecord()
        {

            string json = System.IO.File.ReadAllText(@"C:\Users\99002548\Documents\Storetojson\Models\sectiondata.json");
         Mainsection jsondata = new Mainsection();

            jsondata = JsonConvert.DeserializeObject<Mainsection>(json);
            if (jsondata != null)
            {
                foreach (var d in jsondata.Sections)
                {

                    if (d.Name == SubheaderName1)
                    {

                        d.items.Add(it);
                        MessageBox.Show("Record added into Json");
                        FlagsAttribute = 1;
                        break;
                    }

                }


                if (FlagsAttribute == 0)
                {


                    jsondata.Sections.Add(sc);


                    MessageBox.Show("Record added into Json");
                }


            }

            else
            {
               

                jsondata= mainsectionobj;

                MessageBox.Show("Record added into Json");



            }

            string strresultjson = JsonConvert.SerializeObject(jsondata, Formatting.Indented);
            using (var writer = new StreamWriter(@"C:\Users\99002548\Documents\Storetojson\Models\sectiondata.json"))
            {
                writer.Write(strresultjson);
            }
        }

        public bool CanUse(object message)
        {
            return true;
        }

        public void OnPropertyChanged(string property)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(property));
        }




    }
}
