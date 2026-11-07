.class public Lorg/apache/tools/ant/UnknownElement;
.super Lorg/apache/tools/ant/Task;
.source "UnknownElement.java"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/UnknownElement;",
            ">;"
        }
    .end annotation
.end field

.field private final elementName:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private presetDefed:Z

.field private qname:Ljava/lang/String;

.field private realThing:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lorg/apache/tools/ant/UnknownElement;->presetDefed:Z

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    return-void
.end method

.method private handleChild(Ljava/lang/String;Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/Object;Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Z
    .locals 9

    .line 566
    invoke-virtual {p4}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 565
    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsNestedElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_4

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, v0

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/tools/ant/IntrospectionHelper;->getElementCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$Creator;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/tools/ant/UnsupportedElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    invoke-virtual {p5}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->setPolyType(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->create()Ljava/lang/Object;

    move-result-object p2

    .line 582
    instance-of p3, p2, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz p3, :cond_0

    .line 583
    check-cast p2, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 585
    invoke-virtual {p1}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->getRealObject()Ljava/lang/Object;

    move-result-object p3

    .line 586
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->getPreSets()Lorg/apache/tools/ant/UnknownElement;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/apache/tools/ant/UnknownElement;->applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V

    move-object p2, p3

    .line 588
    :cond_0
    invoke-virtual {p5, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setCreator(Lorg/apache/tools/ant/IntrospectionHelper$Creator;)V

    .line 589
    invoke-virtual {p5, p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 590
    instance-of p3, p2, Lorg/apache/tools/ant/Task;

    if-eqz p3, :cond_1

    .line 591
    move-object p3, p2

    check-cast p3, Lorg/apache/tools/ant/Task;

    .line 592
    invoke-virtual {p3, p5}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 593
    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 596
    :cond_1
    instance-of p3, p2, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz p3, :cond_2

    .line 597
    move-object p3, p2

    check-cast p3, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p4}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/tools/ant/ProjectComponent;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 599
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p3

    invoke-virtual {p5, p3}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 600
    invoke-virtual {p4, p2, p5}, Lorg/apache/tools/ant/UnknownElement;->handleChildren(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 601
    invoke-virtual {p1}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;->store()V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 574
    invoke-virtual {p2}, Lorg/apache/tools/ant/IntrospectionHelper;->isDynamic()Z

    move-result p2

    if-eqz p2, :cond_3

    return v8

    .line 575
    :cond_3
    throw p1

    :cond_4
    return v8
.end method


# virtual methods
.method public addChild(Lorg/apache/tools/ant/UnknownElement;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V
    .locals 2

    .line 404
    iget-boolean v0, p0, Lorg/apache/tools/ant/UnknownElement;->presetDefed:Z

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->applyPreSet(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 409
    iget-object v0, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 411
    iget-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 412
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 414
    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    :cond_2
    const/4 p1, 0x1

    .line 416
    iput-boolean p1, p0, Lorg/apache/tools/ant/UnknownElement;->presetDefed:Z

    return-void
.end method

.method public configure(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 183
    instance-of v0, p1, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_1

    .line 184
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 186
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setRuntimeConfigurableWrapper(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lorg/apache/tools/ant/Target;->replaceChild(Lorg/apache/tools/ant/Task;Lorg/apache/tools/ant/Task;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->maybeConfigure()V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->maybeConfigure(Lorg/apache/tools/ant/Project;)V

    .line 207
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/UnknownElement;->handleChildren(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V

    return-void
.end method

.method public copy(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/UnknownElement;
    .locals 5

    .line 670
    new-instance v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/UnknownElement;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setNamespace(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/UnknownElement;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 673
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setQName(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setTaskType(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setTaskName(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 677
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    if-nez v1, :cond_0

    .line 678
    new-instance v1, Lorg/apache/tools/ant/Target;

    invoke-direct {v1}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 679
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 680
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/UnknownElement;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 684
    :goto_0
    new-instance v1, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 685
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getPolyType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->setPolyType(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v2

    .line 688
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 689
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->addText(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChildren()Ljava/util/Enumeration;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/RuntimeConfigurable;

    .line 694
    invoke-virtual {v3}, Lorg/apache/tools/ant/RuntimeConfigurable;->getProxy()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/UnknownElement;

    .line 695
    invoke-virtual {v3, p1}, Lorg/apache/tools/ant/UnknownElement;->copy(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/UnknownElement;

    move-result-object v3

    .line 696
    invoke-virtual {v3}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/RuntimeConfigurable;->addChild(Lorg/apache/tools/ant/RuntimeConfigurable;)V

    .line 697
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/UnknownElement;->addChild(Lorg/apache/tools/ant/UnknownElement;)V

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public execute()V
    .locals 3

    .line 292
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 298
    :try_start_0
    instance-of v2, v0, Lorg/apache/tools/ant/Task;

    if-eqz v2, :cond_1

    .line 299
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 307
    iput-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 306
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 307
    iput-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->setProxy(Ljava/lang/Object;)V

    .line 310
    :cond_3
    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/UnknownElement;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    return-object v0
.end method

.method protected getComponentName()Ljava/lang/String;
    .locals 2

    .line 392
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method protected getNotFoundException(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 505
    invoke-virtual {v0, p2, p1}, Lorg/apache/tools/ant/ComponentHelper;->diagnoseCreationFailure(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 506
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    return-object p2
.end method

.method public getQName()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    return-object v0
.end method

.method public getRealThing()Ljava/lang/Object;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lorg/apache/tools/ant/Task;
    .locals 2

    .line 527
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 528
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 529
    check-cast v0, Lorg/apache/tools/ant/Task;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 2

    .line 515
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 516
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-nez v1, :cond_0

    invoke-super {p0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_0
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;
    .locals 1

    .line 150
    invoke-super {p0}, Lorg/apache/tools/ant/Task;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    return-object v0
.end method

.method protected handleChildren(Ljava/lang/Object;Lorg/apache/tools/ant/RuntimeConfigurable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 346
    :cond_0
    instance-of v0, p1, Lorg/apache/tools/ant/TypeAdapter;

    if-eqz v0, :cond_1

    .line 347
    check-cast p1, Lorg/apache/tools/ant/TypeAdapter;

    invoke-interface {p1}, Lorg/apache/tools/ant/TypeAdapter;->getProxy()Ljava/lang/Object;

    move-result-object p1

    .line 350
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 352
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v7

    .line 354
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    .line 355
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 356
    invoke-virtual {p2, v9}, Lorg/apache/tools/ant/RuntimeConfigurable;->getChild(I)Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v5

    .line 357
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/apache/tools/ant/UnknownElement;

    .line 359
    :try_start_0
    invoke-virtual {v5, v10}, Lorg/apache/tools/ant/RuntimeConfigurable;->isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    invoke-virtual {v10}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v7, v6, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsNestedElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, p1

    move-object v4, v10

    .line 367
    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/UnknownElement;->handleChild(Ljava/lang/String;Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/Object;Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 369
    instance-of v0, p1, Lorg/apache/tools/ant/TaskContainer;

    if-nez v0, :cond_3

    .line 370
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 371
    invoke-virtual {v10}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v7, v0, p1, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->throwNotSupported(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/apache/tools/ant/TaskContainer;

    .line 376
    invoke-interface {v0, v10}, Lorg/apache/tools/ant/TaskContainer;->addTask(Lorg/apache/tools/ant/Task;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/UnsupportedElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 380
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    invoke-virtual {p2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getElementTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " doesn\'t support the nested \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 382
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnsupportedElementException;->getElement()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\" element."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method protected handleErrorFlush(Ljava/lang/String;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 280
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 281
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected handleErrorOutput(Ljava/lang/String;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 266
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 267
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected handleFlush(Ljava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 252
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 253
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected handleInput([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 239
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 240
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result p1

    return p1

    .line 242
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result p1

    return p1
.end method

.method protected handleOutput(Ljava/lang/String;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    .line 217
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected makeObject(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;
    .locals 3

    .line 430
    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/RuntimeConfigurable;->isEnabled(Lorg/apache/tools/ant/UnknownElement;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 433
    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getComponentName()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 440
    instance-of v2, v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v2, :cond_3

    .line 441
    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 442
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 448
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->getPreSets()Lorg/apache/tools/ant/UnknownElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/UnknownElement;->applyPreSet(Lorg/apache/tools/ant/UnknownElement;)V

    .line 449
    instance-of v0, v2, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_1

    .line 450
    move-object v0, v2

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 451
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->init()V

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 444
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "preset "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->getPreSets()Lorg/apache/tools/ant/UnknownElement;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/tools/ant/UnknownElement;->getComponentName()Ljava/lang/String;

    move-result-object p2

    .line 444
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/UnknownElement;->getNotFoundException(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1

    .line 456
    :cond_3
    :goto_0
    instance-of p1, v0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz p1, :cond_4

    .line 457
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    invoke-virtual {v0, v0, p2}, Lorg/apache/tools/ant/UnknownElement;->makeObject(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;

    move-result-object v0

    .line 459
    :cond_4
    instance-of p1, v0, Lorg/apache/tools/ant/Task;

    if-eqz p1, :cond_5

    .line 460
    move-object p1, v0

    check-cast p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 462
    :cond_5
    instance-of p1, v0, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz p1, :cond_6

    .line 463
    move-object p1, v0

    check-cast p1, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ProjectComponent;->setLocation(Lorg/apache/tools/ant/Location;)V

    :cond_6
    return-object v0

    :cond_7
    const-string p1, "task or type"

    .line 438
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/UnknownElement;->getNotFoundException(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method protected makeTask(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Lorg/apache/tools/ant/Task;
    .locals 0

    .line 479
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/tools/ant/Project;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Task;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 484
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 485
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->init()V

    :cond_0
    return-object p1
.end method

.method public maybeConfigure()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lorg/apache/tools/ant/UnknownElement;->makeObject(Lorg/apache/tools/ant/UnknownElement;Lorg/apache/tools/ant/RuntimeConfigurable;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/UnknownElement;->configure(Ljava/lang/Object;)V

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ant:current"

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    .line 116
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lorg/apache/tools/ant/ComponentHelper;->getCurrentAntlibUri()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 120
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setQName(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    return-void
.end method

.method public setRealThing(Ljava/lang/Object;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/apache/tools/ant/UnknownElement;->realThing:Ljava/lang/Object;

    return-void
.end method

.method public similar(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 616
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 619
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/UnknownElement;

    .line 621
    iget-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/UnknownElement;->elementName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 624
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/UnknownElement;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 627
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    iget-object v2, p1, Lorg/apache/tools/ant/UnknownElement;->qname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 631
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v1

    .line 632
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getAttributeMap()Ljava/util/Hashtable;

    move-result-object v2

    .line 631
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 639
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 639
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 644
    :cond_6
    iget-object v1, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 646
    iget-object p1, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v0, v2

    :cond_9
    return v0

    .line 648
    :cond_a
    iget-object v3, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    if-nez v3, :cond_b

    return v0

    .line 651
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_c

    return v0

    :cond_c
    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_e

    .line 656
    iget-object v4, p0, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/UnknownElement;

    .line 657
    iget-object v5, p1, Lorg/apache/tools/ant/UnknownElement;->children:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/UnknownElement;->similar(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    return v0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_e
    return v2
.end method
