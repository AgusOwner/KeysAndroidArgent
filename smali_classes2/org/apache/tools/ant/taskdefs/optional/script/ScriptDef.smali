.class public Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;
.super Lorg/apache/tools/ant/taskdefs/DefBase;
.source "ScriptDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;,
        Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;
    }
.end annotation


# instance fields
.field private attributeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

.field private name:Ljava/lang/String;

.field private nestedElementMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;",
            ">;"
        }
    .end annotation
.end field

.field private nestedElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Rr5wHpoNM5boD4b5K8greFBFLF8()Ljava/util/LinkedHashMap;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/DefBase;-><init>()V

    .line 53
    new-instance v0, Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElements:Ljava/util/List;

    .line 74
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    return-void
.end method

.method static synthetic lambda$withDefault$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$withDefault$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private lookupScriptRepository()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;",
            ">;"
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 314
    monitor-enter v0

    :try_start_0
    const-string v1, "org.apache.ant.scriptrepo"

    .line 316
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 318
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "org.apache.ant.scriptrepo"

    .line 319
    invoke-virtual {v0, v2, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private withDefault(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    .line 496
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 497
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 499
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    .line 506
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda5;-><init>()V

    new-instance v4, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$$ExternalSyntheticLambda6;-><init>()V

    .line 507
    invoke-static {v1, v2, v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 506
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 509
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0

    .line 500
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found unsupported attributes "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    return-void
.end method

.method public addAttribute(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addElement(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->addText(Ljava/lang/String;)V

    return-void
.end method

.method public createNestedElement(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;

    if-eqz v0, :cond_3

    .line 341
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v1

    if-nez v1, :cond_1

    .line 345
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->createDataType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 348
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 351
    :try_start_0
    invoke-static {v1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 353
    :catch_0
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/tools/ant/util/ClasspathUtils;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 355
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    return-object v1

    .line 359
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "<%s> is unable to create the <%s> nested element"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 335
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "<%s> does not support the <%s> nested element"

    invoke-direct {v0, v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public execute()V
    .locals 4

    .line 236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 241
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getSrc()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef requires a src attribute if the encoding is set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getAntlibClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->hasCpDelegate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->createLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 256
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    .line 257
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;

    .line 258
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 262
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 267
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 265
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;->access$000(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$Attribute;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "scriptdef <%s> declares the %s attribute more than once"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 259
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <attribute> elements must specify an attribute name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    .line 271
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;

    .line 272
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 276
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 282
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 283
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_3

    .line 284
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <element> elements must specify either a classname or type attribute"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_8
    :goto_3
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$200(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 288
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$300(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 289
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <element> elements must specify only one of the classname and type attributes"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_a
    :goto_4
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->nestedElementMap:Ljava/util/Map;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 277
    :cond_b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 279
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;->access$100(Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef$NestedElement;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "scriptdef <%s> declares the %s nested element more than once"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 273
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef <element> elements must specify an element name"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_d
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->lookupScriptRepository()Ljava/util/Map;

    move-result-object v0

    .line 297
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getURI()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    .line 298
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 300
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 301
    const-class v1, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 303
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 302
    invoke-static {v1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v1

    .line 303
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    return-void

    .line 242
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef requires a language attribute to specify the script language"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "scriptdef requires a name attribute to name the script"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeScript(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->executeScript(Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;)V

    return-void
.end method

.method public executeScript(Ljava/util/Map;Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDefBase;",
            ")V"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->getScriptRunner()Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object v0

    const-string v1, "attributes"

    .line 393
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->withDefault(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "elements"

    .line 394
    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "project"

    .line 395
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const-string p1, "self"

    .line 397
    invoke-virtual {v0, p1, p3}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->addBean(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scriptdef_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->executeScript(Ljava/lang/String;)V

    return-void
.end method

.method public isAttributeSupported(Ljava/lang/String;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->attributeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$withDefault$0$org-apache-tools-ant-taskdefs-optional-script-ScriptDef(Ljava/lang/String;)Z
    .locals 0

    .line 496
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->isAttributeSupported(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setCompiled(Z)V
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setCompiled(Z)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Ljava/lang/String;)V

    return-void
.end method

.method public setManager(Lorg/apache/tools/ant/util/ScriptManager;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setManager(Lorg/apache/tools/ant/util/ScriptManager;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->name:Ljava/lang/String;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lorg/apache/tools/ant/taskdefs/DefBase;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 84
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setProjectComponent(Lorg/apache/tools/ant/ProjectComponent;)V

    return-void
.end method

.method public setSetBeans(Z)V
    .locals 1

    .line 469
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSetBeans(Z)V

    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/script/ScriptDef;->helper:Lorg/apache/tools/ant/util/ScriptRunnerHelper;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/util/ScriptRunnerHelper;->setSrc(Ljava/io/File;)V

    return-void
.end method
