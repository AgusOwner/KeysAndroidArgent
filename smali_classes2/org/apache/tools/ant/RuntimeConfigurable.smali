.class public Lorg/apache/tools/ant/RuntimeConfigurable;
.super Ljava/lang/Object;
.source "RuntimeConfigurable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;,
        Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private attributeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private transient attributes:Lorg/xml/sax/AttributeList;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private characters:Ljava/lang/StringBuffer;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/RuntimeConfigurable;",
            ">;"
        }
    .end annotation
.end field

.field private elementTag:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private transient namespacedAttribute:Z

.field private polyType:Ljava/lang/String;

.field private proxyConfigured:Z

.field private transient wrappedObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 66
    iput-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    .line 78
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    .line 81
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    .line 84
    iput-boolean v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z

    .line 87
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setElementTag(Ljava/lang/String;)V

    .line 102
    instance-of p2, p1, Lorg/apache/tools/ant/Task;

    if-eqz p2, :cond_0

    .line 103
    check-cast p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    :cond_0
    return-void
.end method

.method private attrToComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3a

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 217
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;
    .locals 3

    const-string v0, ":"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 155
    new-instance p1, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    invoke-direct {p1, v2, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    return-object p1

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->attrToComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lorg/apache/tools/ant/ProjectHelper;->nsToComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/ComponentHelper;->getRestrictedDefinitions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    .line 161
    new-instance p1, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    invoke-direct {p1, v2, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    return-object p1

    .line 163
    :cond_1
    new-instance p2, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, v2}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;-><init>(Ljava/lang/String;ZLorg/apache/tools/ant/RuntimeConfigurable$1;)V

    return-object p2
.end method


# virtual methods
.method public declared-synchronized addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .locals 1

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 358
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addText(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 391
    monitor-exit p0

    return-void

    .line 393
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addText([CII)V
    .locals 1

    monitor-enter p0

    if-nez p3, :cond_0

    .line 408
    monitor-exit p0

    return-void

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyPreSet(Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .locals 3

    .line 579
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 582
    :cond_1
    iget-object v2, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    :cond_3
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    .line 591
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 593
    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 594
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 596
    :cond_4
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    .line 600
    :cond_5
    iget-object v0, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_7

    .line 601
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_6

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 603
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object p1, p1, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    :cond_7
    return-void
.end method

.method public declared-synchronized getAttributeMap()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 335
    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    iget-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    :cond_0
    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttributes()Lorg/xml/sax/AttributeList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributes:Lorg/xml/sax/AttributeList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getChild(I)Lorg/apache/tools/ant/RuntimeConfigurable;
    .locals 1

    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/RuntimeConfigurable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getChildren()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lorg/apache/tools/ant/RuntimeConfigurable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->children:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getElementTag()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPolyType()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProxy()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getText()Ljava/lang/StringBuffer;
    .locals 2

    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z
    .locals 9

    .line 178
    iget-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    const-class v3, Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;

    invoke-static {v2, v3}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v2

    .line 186
    iget-object v3, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->isRestricted()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 192
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 197
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    new-instance v7, Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/apache/tools/ant/RuntimeConfigurable$EnableAttributeConsumer;-><init>(Lorg/apache/tools/ant/RuntimeConfigurable$1;)V

    .line 198
    invoke-virtual {v5}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->getComponentName()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v2, v6, v7, v8}, Lorg/apache/tools/ant/IntrospectionHelper;->createElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/attribute/EnableAttribute;
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_3

    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    invoke-interface {v6, p1, v4}, Lorg/apache/tools/ant/attribute/EnableAttribute;->isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x0

    return p1

    .line 200
    :catch_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return v1
.end method

.method public maybeConfigure(Lorg/apache/tools/ant/Project;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;Z)V

    return-void
.end method

.method public declared-synchronized maybeConfigure(Lorg/apache/tools/ant/Project;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 487
    :try_start_0
    iget-boolean p2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 488
    monitor-exit p0

    return-void

    .line 491
    :cond_0
    :try_start_1
    iget-object p2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-eqz p2, :cond_9

    .line 493
    iget-object p2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    instance-of v0, p2, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_1

    .line 494
    check-cast p2, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p2}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object p2

    .line 497
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    .line 498
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v1

    .line 500
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 501
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 503
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->isRestrictedAttribute(Ljava/lang/String;Lorg/apache/tools/ant/ComponentHelper;)Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;

    move-result-object v5

    .line 504
    invoke-virtual {v5}, Lorg/apache/tools/ant/RuntimeConfigurable$AttributeComponentInformation;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 507
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 512
    instance-of v5, v3, Lorg/apache/tools/ant/Evaluable;

    if-eqz v5, :cond_4

    .line 513
    move-object v5, v3

    check-cast v5, Lorg/apache/tools/ant/Evaluable;

    invoke-interface {v5}, Lorg/apache/tools/ant/Evaluable;->eval()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 515
    :cond_4
    invoke-static {p1}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/PropertyHelper;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 517
    :goto_1
    instance-of v6, p2, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    if-eqz v6, :cond_6

    .line 518
    move-object v6, p2

    check-cast v6, Lorg/apache/tools/ant/taskdefs/MacroInstance;

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/MacroInstance;->getMacroDef()Lorg/apache/tools/ant/taskdefs/MacroDef;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/tools/ant/taskdefs/MacroDef;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;

    .line 519
    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 520
    invoke-virtual {v7}, Lorg/apache/tools/ant/taskdefs/MacroDef$Attribute;->isDoubleExpanding()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v5

    .line 528
    :goto_2
    :try_start_2
    invoke-virtual {v0, p1, p2, v4, v3}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/tools/ant/UnsupportedAttributeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v5, "id"

    .line 541
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    .line 542
    :cond_7
    throw v3

    :catch_1
    move-exception v3

    const-string v5, "id"

    .line 531
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 532
    invoke-virtual {p0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 533
    throw v3

    .line 535
    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    invoke-virtual {p0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " doesn\'t support the \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 537
    invoke-virtual {v3}, Lorg/apache/tools/ant/UnsupportedAttributeException;->getAttribute()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\" attribute"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 551
    :cond_9
    iget-object p2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->characters:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_a

    .line 552
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lorg/apache/tools/ant/ProjectHelper;->addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    :cond_a
    iget-object p2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;

    if-eqz p2, :cond_b

    .line 556
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    const/4 p1, 0x1

    .line 558
    iput-boolean p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reconfigure(Lorg/apache/tools/ant/Project;)V
    .locals 1

    const/4 v0, 0x0

    .line 567
    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z

    .line 568
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public declared-synchronized removeAttribute(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ant-type"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;

    goto :goto_3

    .line 303
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_2

    .line 304
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    :cond_2
    const-string v0, "refid"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 308
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v2, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 310
    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    goto :goto_1

    .line 312
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "id"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    .line 315
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, ":"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->namespacedAttribute:Z

    .line 289
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAttributes(Lorg/xml/sax/AttributeList;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    new-instance v0, Lorg/xml/sax/helpers/AttributeListImpl;

    invoke-direct {v0, p1}, Lorg/xml/sax/helpers/AttributeListImpl;-><init>(Lorg/xml/sax/AttributeList;)V

    iput-object v0, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->attributes:Lorg/xml/sax/AttributeList;

    const/4 v0, 0x0

    .line 274
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 275
    invoke-interface {p1, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setCreator(Lorg/apache/tools/ant/IntrospectionHelper$Creator;)V
    .locals 0

    monitor-enter p0

    .line 228
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setElementTag(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 431
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->elementTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPolyType(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 261
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->polyType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxy(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 113
    :try_start_0
    iput-object p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->wrappedObject:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lorg/apache/tools/ant/RuntimeConfigurable;->proxyConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
