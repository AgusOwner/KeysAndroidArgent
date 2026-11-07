.class public Lorg/apache/tools/ant/types/Description;
.super Lorg/apache/tools/ant/types/DataType;
.source "Description.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    return-void
.end method

.method private static concatDescriptions(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/Target;Ljava/lang/StringBuilder;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "description"

    .line 95
    invoke-static {p1, v0}, Lorg/apache/tools/ant/types/Description;->findElementInTarget(Lorg/apache/tools/ant/Target;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 96
    instance-of v1, v0, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Lorg/apache/tools/ant/UnknownElement;

    .line 98
    invoke-virtual {v0}, Lorg/apache/tools/ant/UnknownElement;->getWrapper()Lorg/apache/tools/ant/RuntimeConfigurable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/RuntimeConfigurable;->getText()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findElementInTarget(Lorg/apache/tools/ant/Target;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Target;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/Task;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lorg/apache/tools/ant/Target;->getTasks()[Lorg/apache/tools/ant/Task;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/types/Description$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Description$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 109
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getDescription(Lorg/apache/tools/ant/Project;)Ljava/lang/String;
    .locals 3

    const-string v0, "ant.targets"

    .line 79
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/Target;

    .line 85
    invoke-static {p0, v2, v1}, Lorg/apache/tools/ant/types/Description;->concatDescriptions(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/Target;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$findElementInTarget$0(Ljava/lang/String;Lorg/apache/tools/ant/Task;)Z
    .locals 0

    .line 108
    invoke-virtual {p1}, Lorg/apache/tools/ant/Task;->getTaskName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .locals 3

    .line 56
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Description;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "ant.projectHelper"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/ProjectHelper;

    .line 57
    instance-of v0, v0, Lorg/apache/tools/ant/helper/ProjectHelperImpl;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Description;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Description;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Description;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->setDescription(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
