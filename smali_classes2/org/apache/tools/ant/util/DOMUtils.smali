.class public Lorg/apache/tools/ant/util/DOMUtils;
.super Ljava/lang/Object;
.source "DOMUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendCDATA(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 112
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p1

    .line 113
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static appendCDATAElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 160
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/DOMUtils;->createChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 161
    invoke-static {p0, p2}, Lorg/apache/tools/ant/util/DOMUtils;->appendCDATA(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public static appendText(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 91
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    .line 92
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public static appendTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-static {p0, p1}, Lorg/apache/tools/ant/util/DOMUtils;->createChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 137
    invoke-static {p0, p2}, Lorg/apache/tools/ant/util/DOMUtils;->appendText(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method public static createChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    .line 68
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 69
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 70
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public static newDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 44
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method
