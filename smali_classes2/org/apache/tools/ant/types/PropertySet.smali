.class public Lorg/apache/tools/ant/types/PropertySet;
.super Lorg/apache/tools/ant/types/DataType;
.source "PropertySet.java"

# interfaces
.implements Lorg/apache/tools/ant/types/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/PropertySet$PropertyRef;,
        Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;
    }
.end annotation


# instance fields
.field private cachedNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dynamic:Z

.field private mapper:Lorg/apache/tools/ant/types/Mapper;

.field private negate:Z

.field private noAttributeSet:Z

.field private ptyRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PropertySet$PropertyRef;",
            ">;"
        }
    .end annotation
.end field

.field private setRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/PropertySet;->dynamic:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lorg/apache/tools/ant/types/PropertySet;->negate:Z

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/PropertySet;->ptyRefs:Ljava/util/List;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/types/PropertySet;->setRefs:Ljava/util/List;

    .line 478
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/PropertySet;->noAttributeSet:Z

    return-void
.end method

.method private addPropertyNames(Ljava/util/Set;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/ant/types/PropertySet;->addPropertyNames(Ljava/util/Set;Ljava/util/Map;)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    .line 392
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->ptyRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;

    .line 393
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$000(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 394
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$000(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 395
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$000(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_2
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$100(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 398
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 399
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$100(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 400
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 403
    :cond_4
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$200(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 404
    new-instance v2, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;

    invoke-direct {v2}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;-><init>()V

    .line 405
    invoke-virtual {v2}, Lorg/apache/tools/ant/util/regexp/RegexpMatcherFactory;->newRegexpMatcher()Lorg/apache/tools/ant/util/regexp/RegexpMatcher;

    move-result-object v2

    .line 406
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$200(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->setPattern(Ljava/lang/String;)V

    .line 407
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    invoke-interface {v2, v3}, Lorg/apache/tools/ant/util/regexp/RegexpMatcher;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 409
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 412
    :cond_6
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$300(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 413
    invoke-static {v1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->access$300(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v3, 0x2

    goto :goto_3

    :sswitch_1
    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    goto :goto_3

    :sswitch_2
    const-string v2, "commandline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 424
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Impossible: Invalid builtin attribute!"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 418
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/tools/ant/types/PropertySet;->getAllSystemProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 421
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 428
    :cond_a
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Impossible: Invalid PropertyRef!"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x570e0e41 -> :sswitch_2
        -0x34e38dd1 -> :sswitch_1
        0x179a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAllSystemProperties()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda5;-><init>()V

    new-instance v3, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda6;-><init>()V

    .line 285
    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private getEffectiveProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0}, Lorg/apache/tools/ant/types/PropertySet;->getAllSystemProperties()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {v0}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v1

    .line 344
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda8;-><init>(Lorg/apache/tools/ant/PropertyHelper;)V

    .line 345
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda9;-><init>()V

    .line 346
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda1;-><init>()V

    .line 347
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 350
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet;->setRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/PropertySet;

    .line 351
    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private getPropertyMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    .line 308
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    .line 311
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/types/PropertySet;->getEffectiveProperties()Ljava/util/Map;

    move-result-object v1

    .line 312
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyNames(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    .line 313
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 316
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 317
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_3

    .line 325
    invoke-interface {v0, v4}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v4, 0x0

    .line 327
    aget-object v4, v6, v4

    .line 330
    :cond_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v3
.end method

.method private getPropertyNames(Ljava/util/Map;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getDynamic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->cachedNames:Ljava/util/Set;

    if-nez v0, :cond_3

    .line 359
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 360
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/types/PropertySet;->addPropertyNames(Ljava/util/Set;Ljava/util/Map;)V

    .line 362
    iget-object v1, p0, Lorg/apache/tools/ant/types/PropertySet;->setRefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/types/PropertySet;

    .line 363
    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 365
    :cond_1
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/PropertySet;->negate:Z

    if-eqz v1, :cond_2

    .line 367
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 368
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-object v0, v1

    .line 371
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getDynamic()Z

    move-result p1

    if-nez p1, :cond_3

    .line 372
    iput-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->cachedNames:Ljava/util/Set;

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$getAllSystemProperties$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$getAllSystemProperties$1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 285
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAllSystemProperties$2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method static synthetic lambda$getEffectiveProperties$3(Lorg/apache/tools/ant/PropertyHelper;Ljava/lang/String;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 1

    .line 345
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/PropertyHelper;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$getEffectiveProperties$4(Ljava/util/AbstractMap$SimpleImmutableEntry;)Z
    .locals 0

    .line 346
    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$iterator$7(Ljava/util/Optional;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/types/Resource;
    .locals 1

    .line 527
    new-instance v0, Lorg/apache/tools/ant/types/resources/MappedResource;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-direct {v0, p1, p0}, Lorg/apache/tools/ant/types/resources/MappedResource;-><init>(Lorg/apache/tools/ant/types/Resource;Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-object v0
.end method

.method static synthetic lambda$toString$5(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Mapper;->add(Lorg/apache/tools/ant/util/FileNameMapper;)V

    return-void
.end method

.method public addPropertyref(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->assertNotReference()V

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->ptyRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->assertNotReference()V

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->setChecked(Z)V

    .line 203
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->setRefs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendBuiltin(Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;)V
    .locals 1

    .line 166
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;-><init>()V

    .line 167
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->setBuiltin(Lorg/apache/tools/ant/types/PropertySet$BuiltinPropertySetName;)V

    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->addPropertyref(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)V

    return-void
.end method

.method public appendName(Ljava/lang/String;)V
    .locals 1

    .line 136
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;-><init>()V

    .line 137
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->setName(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->addPropertyref(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)V

    return-void
.end method

.method public appendPrefix(Ljava/lang/String;)V
    .locals 1

    .line 156
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;-><init>()V

    .line 157
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->setPrefix(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->addPropertyref(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)V

    return-void
.end method

.method public appendRegex(Ljava/lang/String;)V
    .locals 1

    .line 146
    new-instance v0, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;-><init>()V

    .line 147
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/PropertySet$PropertyRef;->setRegex(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->addPropertyref(Lorg/apache/tools/ant/types/PropertySet$PropertyRef;)V

    return-void
.end method

.method protected final assertNotReference()V
    .locals 1

    .line 468
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/PropertySet;->noAttributeSet:Z

    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 2

    .line 211
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->assertNotReference()V

    .line 212
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->mapper:Lorg/apache/tools/ant/types/Mapper;

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->mapper:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Too many <mapper>s!"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected declared-synchronized dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isChecked()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 558
    monitor-exit p0

    return-void

    .line 560
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/DataType;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    .line 563
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->mapper:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v0, :cond_2

    .line 564
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/PropertySet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 566
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->setRefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PropertySet;

    .line 567
    invoke-static {v1, p1, p2}, Lorg/apache/tools/ant/types/PropertySet;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 569
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/PropertySet;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDynamic()Z
    .locals 1

    .line 259
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/tools/ant/types/PropertySet;->dynamic:Z

    return v0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    .line 263
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/PropertySet;->dynamic:Z

    return v0
.end method

.method public getMapper()Lorg/apache/tools/ant/types/Mapper;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/tools/ant/types/PropertySet;->mapper:Lorg/apache/tools/ant/types/Mapper;

    return-object v0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    .line 275
    iget-object v0, p0, Lorg/apache/tools/ant/types/PropertySet;->mapper:Lorg/apache/tools/ant/types/Mapper;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .locals 2

    .line 293
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 294
    invoke-direct {p0}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/PropertySet;
    .locals 1

    .line 439
    const-class v0, Lorg/apache/tools/ant/types/PropertySet;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/PropertySet;

    return-object v0
.end method

.method public isFilesystemOnly()Z
    .locals 1

    .line 547
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->isFilesystemOnly()Z

    move-result v0

    return v0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Resource;",
            ">;"
        }
    .end annotation

    .line 518
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 521
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    .line 522
    invoke-direct {p0}, Lorg/apache/tools/ant/types/PropertySet;->getEffectiveProperties()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyNames(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 523
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/PropertySet;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 525
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 527
    new-instance v2, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda3;-><init>(Ljava/util/Optional;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 529
    :cond_1
    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$iterator$6$org-apache-tools-ant-types-PropertySet(Ljava/lang/String;)Lorg/apache/tools/ant/types/Resource;
    .locals 2

    .line 523
    new-instance v0, Lorg/apache/tools/ant/types/resources/PropertyResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/types/resources/PropertyResource;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDynamic(Z)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->assertNotReference()V

    .line 240
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/PropertySet;->dynamic:Z

    return-void
.end method

.method public setMapper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->createMapper()Lorg/apache/tools/ant/types/Mapper;

    move-result-object v0

    .line 179
    new-instance v1, Lorg/apache/tools/ant/types/Mapper$MapperType;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Mapper$MapperType;-><init>()V

    .line 180
    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/Mapper$MapperType;->setValue(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Mapper;->setType(Lorg/apache/tools/ant/types/Mapper$MapperType;)V

    .line 182
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Mapper;->setFrom(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/types/Mapper;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method public setNegate(Z)V
    .locals 0

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->assertNotReference()V

    .line 251
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/PropertySet;->negate:Z

    return-void
.end method

.method public final setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .locals 1

    .line 451
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/PropertySet;->noAttributeSet:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/DataType;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object p1

    throw p1
.end method

.method public size()I
    .locals 1

    .line 538
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 503
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->getRef()Lorg/apache/tools/ant/types/PropertySet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/PropertySet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 506
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/PropertySet;->dieOnCircularReference()V

    .line 507
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/PropertySet;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/PropertySet$$ExternalSyntheticLambda7;-><init>()V

    .line 508
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
