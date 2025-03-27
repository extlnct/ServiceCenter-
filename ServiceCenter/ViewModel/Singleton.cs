using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceCenter.ViewModel
{
    public class Singleton
    {

        public Singleton() { }
        private int _sch;
        public int Sch
        {
            get => _sch;
            set => _sch = value;
        }
    }
}
