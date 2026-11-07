.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.super Lorg/xml/sax/HandlerBase;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AbstractHandler"
.end annotation


# instance fields
.field helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

.field protected parentHandler:Lorg/xml/sax/DocumentHandler;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    .line 208
    iput-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->parentHandler:Lorg/xml/sax/DocumentHandler;

    .line 209
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 212
    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$000(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Parser;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance p2, Lorg/xml/sax/SAXParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected text \""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p3}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p2
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 264
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$000(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Parser;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->parentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {p1, v0}, Lorg/xml/sax/Parser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 228
    new-instance p2, Lorg/xml/sax/SAXParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected element \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p2
.end method
