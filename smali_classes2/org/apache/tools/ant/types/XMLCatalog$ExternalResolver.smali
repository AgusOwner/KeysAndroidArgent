.class Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;
.super Ljava/lang/Object;
.source "XMLCatalog.java"

# interfaces
.implements Lorg/apache/tools/ant/types/XMLCatalog$CatalogResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/types/XMLCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalResolver"
.end annotation


# instance fields
.field private externalCatalogsProcessed:Z

.field private parseCatalog:Ljava/lang/reflect/Method;

.field private resolve:Ljava/lang/reflect/Method;

.field private resolveEntity:Ljava/lang/reflect/Method;

.field private resolverImpl:Ljava/lang/Object;

.field private setXMLCatalog:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lorg/apache/tools/ant/types/XMLCatalog;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 911
    iput-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 900
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->setXMLCatalog:Ljava/lang/reflect/Method;

    .line 901
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->parseCatalog:Ljava/lang/reflect/Method;

    .line 902
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    .line 903
    iput-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 908
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->externalCatalogsProcessed:Z

    .line 913
    iput-object p3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    :try_start_0
    const-string p3, "setXMLCatalog"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 923
    const-class v3, Lorg/apache/tools/ant/types/XMLCatalog;

    aput-object v3, v2, v0

    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->setXMLCatalog:Ljava/lang/reflect/Method;

    const-string p3, "parseCatalog"

    new-array v2, v1, [Ljava/lang/Class;

    .line 926
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->parseCatalog:Ljava/lang/reflect/Method;

    const-string p3, "resolveEntity"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 929
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {p2, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    const-string p3, "resolve"

    new-array v2, v2, [Ljava/lang/Class;

    .line 932
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    const-class v0, Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "Apache resolver library found, xml-commons resolver will be used"

    const/4 p3, 0x3

    .line 938
    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p1

    .line 935
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private processExternalCatalogs()V
    .locals 10

    .line 1087
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->externalCatalogsProcessed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1090
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->setXMLCatalog:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1096
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using catalogpath \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 1101
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/XMLCatalog;->getCatalogPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v0, v4

    .line 1102
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1103
    iget-object v6, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Parsing "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 1105
    :try_start_1
    iget-object v6, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->parseCatalog:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 1092
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1112
    :cond_0
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->externalCatalogsProcessed:Z

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->processExternalCatalogs()V

    .line 1002
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1006
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Matching catalog entry found for uri: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' location: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1008
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 1006
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 1026
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1027
    new-instance v2, Lorg/apache/tools/ant/types/ResourceLocation;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/ResourceLocation;-><init>()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/ResourceLocation;->setBase(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v0

    .line 1033
    :catch_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/ResourceLocation;->setPublicId(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/ResourceLocation;->setLocation(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1039
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 1043
    new-instance p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p1, v0}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    goto :goto_2

    .line 1046
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1049
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    if-nez p2, :cond_4

    .line 1063
    :try_start_3
    invoke-static {}, Lorg/apache/tools/ant/types/XMLCatalog;->access$400()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/XMLCatalog;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1065
    new-instance p2, Ljavax/xml/transform/TransformerException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 1069
    :cond_4
    :goto_1
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolve:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    return-object p1

    :catch_4
    move-exception p1

    .line 1072
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4

    .line 946
    invoke-direct {p0}, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->processExternalCatalogs()V

    .line 948
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 953
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Matching catalog entry found for publicId: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' location: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 955
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 953
    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 958
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v1

    if-nez v1, :cond_0

    .line 961
    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v1, v0}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    .line 966
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 967
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/xml/sax/InputSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 970
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 983
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolveEntity:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/apache/tools/ant/types/XMLCatalog$ExternalResolver;->resolverImpl:Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/xml/sax/InputSource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return-object v1

    :catch_1
    move-exception p1

    .line 986
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
