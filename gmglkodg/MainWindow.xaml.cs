using Microsoft.Win32;
using System.IO;
using System.Windows;
using System.Windows.Documents;
using Spire.Doc;
using System.Linq.Expressions;

namespace gmglkodg
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog sfd = new SaveFileDialog();
            sfd.Filter = "Text Files (*.txt)|*.txt|RichText Files (*.rtf)|*.rtf|XAML Files (*.xaml)|*.xaml|All files (*.*)|*.*";
            if (sfd.ShowDialog() == true)
            {
                TextRange doc = new TextRange(docBox.Document.ContentStart, docBox.Document.ContentEnd);
                using (FileStream fs = File.Create(sfd.FileName))
                {
                    if (Path.GetExtension(sfd.FileName).ToLower() == ".rtf")
                        doc.Save(fs, DataFormats.Rtf);
                    else if (Path.GetExtension(sfd.FileName).ToLower() == ".txt")
                        doc.Save(fs, DataFormats.Text);
                    else
                        fs.Close();
                        Document document = new Document();
                        document.LoadFromFile(sfd.FileName);
                        document.SaveToFile(sfd.FileName,FileFormat.Docx);
                        var range = new TextRange(richText.Document.ContentStart, richText.Document.ContentEnd);
                        var ff = new FileStream(sfd.FileName,FileMode.Create);
                        range.Save(ff, DataFormats.Rtf);
                        ff.Close();

                }
            }
        }

        private void Load_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Filter = "RichText Files (*.rtf)|*.rtf|All files (*.*)|*.*";

            if (ofd.ShowDialog() == true)
            {
                TextRange doc = new TextRange(docBox.Document.ContentStart, docBox.Document.ContentEnd);
                using (FileStream fs = new FileStream(ofd.FileName, FileMode.Open))
                {
                    if (Path.GetExtension(ofd.FileName).ToLower() == ".rtf")
                        doc.Load(fs, DataFormats.Rtf);
                    else if (Path.GetExtension(ofd.FileName).ToLower() == ".txt")
                        doc.Load(fs, DataFormats.Text);
                    else
                    {
                        fs.Close();
                        Document docc = new Document();
                        docc.LoadFromFile(ofd.FileName);
                        docc.SaveToFile(ofd.FileName, FileFormat.Rtf);
                        var range = new TextRange(docBox.Document.ContentStart, docBox.Document.ContentEnd);
                        var tt = new FileStream(ofd.FileName, FileMode.OpenOrCreate);
                        range.Load(tt, DataFormats.Rtf);
                        fs.Close();
                    }
                }
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Senger senger = new Senger();
            senger.Show();
        }
    }
}