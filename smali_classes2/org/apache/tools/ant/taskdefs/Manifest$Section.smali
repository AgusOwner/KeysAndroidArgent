.class public Lorg/apache/tools/ant/taskdefs/Manifest$Section;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GbpjhDUhR839wQFaA90wIo4vFzA(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    .line 398
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 0

    .line 387
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method private storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 633
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 636
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\""

    const-string v3, ": "

    if-eqz v1, :cond_0

    .line 638
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\"Name\" attributes should not occur in the main section and must be the first element in all other sections: \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 644
    :cond_0
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Manifest attributes should not start with \"From\" in \""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    :cond_1
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 650
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    .line 651
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    if-nez v0, :cond_2

    .line 654
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    const-string v2, "Multiple Class-Path attributes are supported but violate the Jar specification and may not be correctly processed in all environments"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValues()Ljava/util/Enumeration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 660
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 665
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 661
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The attribute \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" may not occur more than once in the same section"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Attributes must have name and value"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 613
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 615
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Specify the section name using the \"name\" attribute of the <section> element rather than using a \"Name\" manifest attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 679
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;-><init>()V

    .line 680
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->setName(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    .line 682
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 683
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 724
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 732
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;

    .line 734
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;
    .locals 2

    .line 568
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    return-object p1
.end method

.method public getAttributeKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 590
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 591
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWarnings()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 714
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method synthetic lambda$clone$0$org-apache-tools-ant-taskdefs-Manifest$Section(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;
    .locals 2

    .line 682
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 472
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Z)V

    return-void
.end method

.method public merge(Lorg/apache/tools/ant/taskdefs/Manifest$Section;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/taskdefs/ManifestException;

    const-string p2, "Unable to merge sections with different names"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Class-Path"

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v4

    .line 498
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 500
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>()V

    .line 501
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->setName(Ljava/lang/String;)V

    .line 503
    :cond_3
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValues()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 506
    :cond_4
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    if-eqz p2, :cond_6

    .line 512
    invoke-virtual {p0, v3}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 514
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getValues()Ljava/util/Enumeration;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 517
    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->storeAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    .line 521
    :cond_7
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->warnings:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public read(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 434
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 435
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 438
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    if-nez v1, :cond_3

    .line 441
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/taskdefs/ManifestException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t start an attribute with a continuation line "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/taskdefs/ManifestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 450
    :cond_3
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->addContinuation(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_4
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->addAttributeAndCheck(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v1

    if-eqz v2, :cond_0

    return-object v2

    :cond_5
    :goto_1
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .line 600
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->write(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public write(Ljava/io/PrintWriter;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    const-string v1, "Name"

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->write(Ljava/io/PrintWriter;)V

    .line 553
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 554
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttribute(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->write(Ljava/io/PrintWriter;Z)V

    goto :goto_0

    :cond_1
    const-string p2, "\r\n"

    .line 556
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
