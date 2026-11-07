.class Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;
.super Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;
.source "ProjectHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TargetHandler"
.end annotation


# instance fields
.field private target:Lorg/apache/tools/ant/Target;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl$AbstractHandler;-><init>(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    const/4 p1, 0x0

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v7, v0

    move v6, v1

    .line 525
    :goto_0
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 526
    invoke-interface {p2, v6}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v8

    .line 527
    invoke-interface {p2, v6}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 528
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, -0x1

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "depends"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v11, 0x5

    goto :goto_1

    :sswitch_1
    const-string v10, "name"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v11, 0x4

    goto :goto_1

    :sswitch_2
    const-string v10, "if"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x3

    goto :goto_1

    :sswitch_3
    const-string v10, "id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x2

    goto :goto_1

    :sswitch_4
    const-string v10, "unless"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    :sswitch_5
    const-string v10, "description"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    move v11, v1

    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 552
    new-instance p1, Lorg/xml/sax/SAXParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected attribute \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 553
    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    :pswitch_0
    move-object v7, v9

    goto :goto_2

    .line 531
    :pswitch_1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    move-object p1, v9

    goto :goto_2

    .line 532
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Lorg/apache/tools/ant/Location;

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 533
    invoke-static {v0}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/tools/ant/Location;-><init>(Lorg/xml/sax/Locator;)V

    const-string v0, "name attribute must not be empty"

    invoke-direct {p1, v0, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :pswitch_2
    move-object v2, v9

    goto :goto_2

    :pswitch_3
    move-object v5, v9

    goto :goto_2

    :pswitch_4
    move-object v3, v9

    goto :goto_2

    :pswitch_5
    move-object v4, v9

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_a

    .line 562
    new-instance p2, Lorg/apache/tools/ant/Target;

    invoke-direct {p2}, Lorg/apache/tools/ant/Target;-><init>()V

    iput-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    .line 565
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/Target;->addDependency(Ljava/lang/String;)V

    .line 567
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 568
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/Target;->setIf(Ljava/lang/String;)V

    .line 569
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p2, v3}, Lorg/apache/tools/ant/Target;->setUnless(Ljava/lang/String;)V

    .line 570
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p2, v4}, Lorg/apache/tools/ant/Target;->setDescription(Ljava/lang/String;)V

    .line 571
    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p2, p1, v0}, Lorg/apache/tools/ant/Project;->addTarget(Ljava/lang/String;Lorg/apache/tools/ant/Target;)V

    if-eqz v5, :cond_8

    .line 573
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 574
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    invoke-static {p1}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$200(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/apache/tools/ant/Project;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p1, v5, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 579
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 580
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-virtual {p1, v7}, Lorg/apache/tools/ant/Target;->setDepends(Ljava/lang/String;)V

    :cond_9
    return-void

    .line 558
    :cond_a
    new-instance p1, Lorg/xml/sax/SAXParseException;

    iget-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    .line 559
    invoke-static {p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$100(Lorg/apache/tools/ant/helper/ProjectHelperImpl;)Lorg/xml/sax/Locator;

    move-result-object p2

    const-string v0, "target element appears without a name attribute"

    invoke-direct {p1, v0, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66ca7c04 -> :sswitch_5
        -0x3218444e -> :sswitch_4
        0xd1b -> :sswitch_3
        0xd1d -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5ca27787 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
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

    .line 596
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->helperImpl:Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelperImpl$TargetHandler;->target:Lorg/apache/tools/ant/Target;

    invoke-static {v0, p0, v1, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelperImpl;->access$700(Lorg/apache/tools/ant/helper/ProjectHelperImpl;Lorg/xml/sax/DocumentHandler;Lorg/apache/tools/ant/Target;Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method
