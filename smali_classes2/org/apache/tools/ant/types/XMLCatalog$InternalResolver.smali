.class Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;
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
    name = "InternalResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/tools/ant/types/XMLCatalog;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .locals 2

    .line 803
    iput-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Apache resolver library not found, internal resolver will be used"

    const/4 v1, 0x3

    .line 804
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 845
    iget-object v0, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Matching catalog entry found for uri: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 846
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' location: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 847
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 845
    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    .line 863
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 864
    new-instance p2, Lorg/apache/tools/ant/types/ResourceLocation;

    invoke-direct {p2}, Lorg/apache/tools/ant/types/ResourceLocation;-><init>()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :try_start_1
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/ResourceLocation;->setBase(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object p2, p1

    .line 870
    :catch_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/ResourceLocation;->setPublicId(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/types/ResourceLocation;->setLocation(Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p1

    if-nez p1, :cond_1

    .line 876
    iget-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 880
    iget-object p1, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p1, p2}, Lorg/apache/tools/ant/types/XMLCatalog;->access$300(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 884
    new-instance p2, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p2, p1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2

    .line 812
    iget-object p2, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p2, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$000(Lorg/apache/tools/ant/types/XMLCatalog;Ljava/lang/String;)Lorg/apache/tools/ant/types/ResourceLocation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 816
    iget-object p2, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matching catalog entry found for publicId: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' location: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 818
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/ResourceLocation;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 816
    invoke-virtual {p2, v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->log(Ljava/lang/String;I)V

    .line 821
    iget-object p2, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p2, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$100(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p2

    if-nez p2, :cond_0

    .line 824
    iget-object p2, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p2, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$200(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_2

    .line 828
    iget-object p2, p0, Lorg/apache/tools/ant/types/XMLCatalog$InternalResolver;->this$0:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-static {p2, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->access$300(Lorg/apache/tools/ant/types/XMLCatalog;Lorg/apache/tools/ant/types/ResourceLocation;)Lorg/xml/sax/InputSource;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :cond_2
    :goto_0
    return-object p2
.end method
