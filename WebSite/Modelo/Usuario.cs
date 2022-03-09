using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebSite.Modelo
{
    public class Usuario
    {
        public Usuario() { }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public static List<Usuario> lista = new List<Usuario>();

        public List<Usuario> Todos()
        {
            return Usuario.lista;
        }
        public void Salvar()
        {
            Usuario.lista.Add(this);
        }
    }
}