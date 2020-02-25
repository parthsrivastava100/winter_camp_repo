from PyPDF2 import PdfFileWriter, PdfFileReader
import io
from reportlab.pdfgen import canvas
from reportlab.lib.pagesizes import letter

packet = io.BytesIO()
# create a new PDF with Reportlab
for i in range(3):
    g=input("Enter the template String:")
    can = canvas.Canvas(packet, pagesize=letter)
    can.drawString(100, 300, g)
    can.save()

    #move to the beginning of the StringIO buffer
    packet.seek(0)
    if(i==0):
        new_pdf = PdfFileReader(packet)
        m="mth102.pdf"
    elif(i%2==0):
        m="dest1.pdf"
    else:
        m="dest.pdf"
    # read your existing PDF
    existing_pdf = PdfFileReader(open(m, "rb"))
    output = PdfFileWriter()
    # add the "watermark" (which is the new pdf) on the existing page
    page = existing_pdf.getPage(0)
    page.mergePage(new_pdf.getPage(0))
    output.addPage(page)
    if(m=="mth102.pdf"):
           outputStream = open("dest.pdf", "wb")
    elif(m=="dest.pdf"):
            outputStream = open("dest1.pdf","wb")
    elif(m=="dest1.pdf"):
        outputStream = open("dest.pdf", "wb")
    output.write(outputStream)
    outputStream.close()
# finally, write "output" to a real file
