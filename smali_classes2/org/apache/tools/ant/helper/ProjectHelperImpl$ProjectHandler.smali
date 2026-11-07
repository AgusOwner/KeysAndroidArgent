.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProjectHandler"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    return-void
.end method

.method private handleTarget(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 479
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v2

    move v4, v0

    .line 386
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v5

    const-string v6, "basedir"

    if-ge v4, v5, :cond_4

    .line 387
    invoke-interface {p2, v4}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-interface {p2, v4}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_1
    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_2
    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v9, v0

    :goto_1
    packed-switch v9, :pswitch_data_0

    .line 403
    new-instance p1, Lorg/xml/sax/SAXParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected attribute \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 404
    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :pswitch_0
    move-object p1, v7

    goto :goto_2

    :pswitch_1
    move-object v1, v7

    goto :goto_2

    :pswitch_2
    move-object v2, v7

    goto :goto_2

    :pswitch_3
    move-object v3, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_a

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 409
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->setDefault(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 415
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/Project;->setName(Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 420
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    :cond_6
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v6}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 424
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v3, :cond_8

    .line 427
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$400(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_3

    .line 430
    :cond_8
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 431
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/Project;->setBasedir(Ljava/lang/String;)V

    goto :goto_3

    .line 433
    :cond_9
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$300()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$400(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 435
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    .line 440
    :goto_3
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$600(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Target;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, v0, p2}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    return-void

    .line 411
    :cond_a
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "The default attribute is required"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x13d33fe4 -> :sswitch_3
        0xd1b -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const-string v0, "target"

    .line 459
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->handleTarget(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$ProjectHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {v1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$600(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-static {v0, p0, v1, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$700(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :goto_0
    return-void
.end method
