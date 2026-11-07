.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataTypeHandler"
.end annotation


# instance fields
.field private element:Ljava/lang/Object;

.field private target:Lorg/apache/tools/ant/Target;

.field private wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;)V
    .locals 0

    .line 954
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    const/4 p1, 0x0

    .line 940
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 955
    iput-object p3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->target:Lorg/apache/tools/ant/Target;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 999
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText([CII)V

    return-void
.end method

.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const-string v0, "Unknown data type "

    .line 976
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->createDataType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->element:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 980
    new-instance v0, Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->element:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 981
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttributes(Lorg/xml/sax/AttributeList;)V

    .line 982
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->target:Lorg/apache/tools/ant/Target;

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Target;->addDataType(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    return-void

    .line 978
    :cond_0
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 984
    new-instance p2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw p2
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 1015
    new-instance v6, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v3, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->element:Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->wrapper:Lorg/apache/tools/ant/RuntimeConfigurable;

    iget-object v5, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$DataTypeHandler;->target:Lorg/apache/tools/ant/Target;

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;Lorg/apache/tools/ant/Target;)V

    invoke-virtual {v6, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$NestedElementHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method
