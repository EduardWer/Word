using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace gmglkodg
{
    /// <summary>
    /// Логика взаимодействия для Senger.xaml
    /// </summary>
    public partial class Senger : Window
    {
        public Senger()
        {
            InitializeComponent();
            List<string> strings = new List<string>() {"smtp.gmail.ru", "smtp.mail.ru", "smtp.yandex.ru", "smtp.rambler.ru" };
            vibor.ItemsSource = strings;
        }

        private void send_Click(object sender, RoutedEventArgs e)
        {
            var test = ((string)vibor.SelectedItem);
            TextRange range = new TextRange(message_text.Document.ContentStart, message_text.Document.ContentEnd);
            MailMessage message = new MailMessage(From.Text,To.Text,Sub.Text,range.Text);
            message.Attachments.Add(new Attachment("C:\\Users\\Eduard\\Desktop\\Работа\\Документация к проекту магази.rtf"));
            SmtpClient client = new SmtpClient((string)vibor.SelectedItem,587);
            client.Credentials = new NetworkCredential(From.Text, Pass.Text);
            client.EnableSsl = true;
            client.Send(message);
        }
    }
}
