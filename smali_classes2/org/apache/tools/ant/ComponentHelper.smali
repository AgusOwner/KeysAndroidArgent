.class public Lorg/apache/tools/ant/ComponentHelper;
.super Ljava/lang/Object;
.source "ComponentHelper.java"


# static fields
.field private static final ANT_PROPERTY_TASK:Ljava/lang/String; = "property"

.field private static final BUILD_SYSCLASSPATH_ONLY:Ljava/lang/String; = "only"

.field public static final COMPONENT_HELPER_REFERENCE:Ljava/lang/String; = "ant.ComponentHelper"

.field private static final ERROR_NO_TASK_LIST_LOAD:Ljava/lang/String; = "Can\'t load default task list"

.field private static final ERROR_NO_TYPE_LIST_LOAD:Ljava/lang/String; = "Can\'t load default type list"

.field private static defaultDefinitions:[Ljava/util/Properties;


# instance fields
.field private antLibCurrentUri:Ljava/lang/String;

.field private antLibStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final antTypeTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final checkedNamespaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private next:Lorg/apache/tools/ant/ComponentHelper;

.field private project:Lorg/apache/tools/ant/Project;

.field private rebuildTaskClassDefinitions:Z

.field private rebuildTypeClassDefinitions:Z

.field private final restrictedDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;>;"
        }
    .end annotation
.end field

.field private final taskClassDefinitions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final typeClassDefinitions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Properties;

    .line 129
    sput-object v0, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    .line 74
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    .line 77
    iput-boolean v0, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized checkNamespace(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 823
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "antlib:org.apache.tools.ant"

    :cond_0
    const-string v0, "antlib:"

    .line 827
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 828
    monitor-exit p0

    return-void

    .line 830
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 831
    monitor-exit p0

    return-void

    .line 833
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {p0}, Lorg/apache/tools/ant/ComponentHelper;->initDefaultDefinitions()V

    .line 842
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Typedef;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Typedef;-><init>()V

    .line 843
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Typedef;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 844
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Typedef;->init()V

    .line 845
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Typedef;->setURI(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Typedef;->setTaskName(Ljava/lang/String;)V

    .line 850
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/Definer;->makeResourceFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Typedef;->setResource(Ljava/lang/String;)V

    .line 852
    new-instance p1, Lorg/apache/tools/ant/taskdefs/Definer$OnError;

    const-string v1, "ignore"

    invoke-direct {p1, v1}, Lorg/apache/tools/ant/taskdefs/Definer$OnError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Typedef;->setOnError(Lorg/apache/tools/ant/taskdefs/Definer$OnError;)V

    .line 853
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Typedef;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createNewTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 538
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 539
    const-class v2, Lorg/apache/tools/ant/Task;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 546
    :cond_1
    instance-of v1, v0, Lorg/apache/tools/ant/Task;

    if-eqz v1, :cond_2

    .line 550
    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 551
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   +Task: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-object v0

    .line 547
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a Task from \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' but got an instance of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " instead"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-object v1
.end method

.method private findTypeMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1072
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1073
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized getCheckedNamespace()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    .line 763
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    const-string v1, "build.sysclasspath"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "only"

    .line 765
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->getCoreLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "ant.ComponentHelper"

    .line 150
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/ComponentHelper;

    if-eqz v1, :cond_1

    return-object v1

    .line 154
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/ComponentHelper;

    invoke-direct {v1}, Lorg/apache/tools/ant/ComponentHelper;-><init>()V

    .line 155
    invoke-virtual {v1, p0}, Lorg/apache/tools/ant/ComponentHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 157
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static declared-synchronized getDefaultDefinitions(Z)Ljava/util/Properties;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-class v0, Lorg/apache/tools/ant/ComponentHelper;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 783
    :goto_0
    :try_start_0
    sget-object v2, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    aget-object v2, v2, v1

    if-nez v2, :cond_5

    if-eqz p0, :cond_1

    const-string v2, "/org/apache/tools/ant/types/defaults.properties"

    goto :goto_1

    :cond_1
    const-string v2, "/org/apache/tools/ant/taskdefs/defaults.properties"

    :goto_1
    if-eqz p0, :cond_2

    const-string p0, "Can\'t load default type list"

    goto :goto_2

    :cond_2
    const-string p0, "Can\'t load default task list"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 787
    :goto_2
    :try_start_1
    const-class v3, Lorg/apache/tools/ant/ComponentHelper;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_3

    .line 791
    :try_start_2
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 792
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 793
    sget-object v4, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    aput-object v3, v4, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 794
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 789
    :cond_3
    :try_start_4
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    if-eqz v2, :cond_4

    .line 787
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v1

    .line 795
    :try_start_7
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, p0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 798
    :cond_5
    :goto_5
    sget-object p0, Lorg/apache/tools/ant/ComponentHelper;->defaultDefinitions:[Ljava/util/Properties;

    aget-object p0, p0, v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 634
    invoke-static {p1}, Lorg/apache/tools/ant/Project;->getProject(Ljava/lang/Object;)Lorg/apache/tools/ant/Project;

    move-result-object p0

    :cond_0
    if-nez p0, :cond_1

    .line 636
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->getUnmappedElementName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object p0

    .line 637
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getRestrictedDefinition()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;>;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 211
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 214
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 214
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 217
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private static getUnmappedElementName(Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    .line 643
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 645
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initTasks()V
    .locals 6

    const/4 v0, 0x0

    .line 749
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    .line 750
    invoke-static {v1}, Lorg/apache/tools/ant/ComponentHelper;->getDefaultDefinitions(Z)Ljava/util/Properties;

    move-result-object v1

    .line 751
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 752
    new-instance v4, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v4}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 753
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 756
    const-class v5, Lorg/apache/tools/ant/Task;

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdaptToClass(Ljava/lang/Class;)V

    .line 757
    const-class v5, Lorg/apache/tools/ant/TaskAdapter;

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdapterClass(Ljava/lang/Class;)V

    .line 758
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initTypes()V
    .locals 6

    const/4 v0, 0x0

    .line 805
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->getClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    .line 806
    invoke-static {v1}, Lorg/apache/tools/ant/ComponentHelper;->getDefaultDefinitions(Z)Ljava/util/Properties;

    move-result-object v1

    .line 807
    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 808
    new-instance v4, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v4}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 809
    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 812
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$findTypeMatches$5(Ljava/lang/String;Lorg/apache/tools/ant/AntTypeDefinition;)Z
    .locals 0

    .line 1071
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateRestrictedDefinition$4(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 679
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private printClassNotFound(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cause: the class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " was not found."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string p2, "        This looks like one of Ant\'s optional components."

    .line 1034
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Action: Check that the appropriate optional JAR exists in"

    .line 1035
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "Action: Check that the component has been correctly declared"

    .line 1038
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "        and that the implementing JAR is in one of:"

    .line 1039
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private printNotLoadDependentClass(Ljava/io/PrintWriter;ZLjava/lang/NoClassDefFoundError;Ljava/lang/String;)V
    .locals 2

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cause: Could not load a dependent class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p3}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1049
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "       It is not enough to have Ant\'s optional JARs"

    .line 1052
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "       you need the JAR files that the optional tasks depend upon."

    .line 1053
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "       Ant\'s optional task dependencies are listed in the manual."

    .line 1054
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "       This class may be in a separate JAR that is not installed."

    .line 1056
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const-string p2, "Action: Determine what extra JAR files are needed, and place them in one of:"

    .line 1058
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private printUnknownDefinition(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "antlib:"

    .line 999
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1000
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Cause: The name is undefined."

    .line 1001
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Action: Check the spelling."

    .line 1002
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Action: Check that any custom tasks/types have been declared."

    .line 1003
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Action: Check that any <presetdef>/<macrodef> declarations have taken place."

    .line 1004
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->findTypeMatches(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1008
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p2, "No types or tasks have been defined in this namespace yet"

    .line 1009
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 1011
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "This appears to be an antlib declaration. "

    .line 1012
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Action: Check that the implementing library exists in one of:"

    .line 1013
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1017
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1018
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The definitions in the namespace "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " are:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 1020
    invoke-virtual {p3}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/AntTypeDefinition;)Z
    .locals 4

    .line 665
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->validDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)Z

    move-result v0

    .line 666
    invoke-direct {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->validDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    .line 668
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    return v2
.end method

.method private updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    .locals 9

    const-string v0, "Trying to override old definition of "

    const-string v1, " +Datatype "

    .line 701
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 702
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v3

    const/4 v4, 0x1

    .line 703
    :try_start_0
    iput-boolean v4, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    .line 704
    iput-boolean v4, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    .line 705
    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/tools/ant/AntTypeDefinition;

    if-eqz v5, :cond_4

    .line 707
    invoke-direct {p0, p1, v5}, Lorg/apache/tools/ant/ComponentHelper;->sameDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/AntTypeDefinition;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 708
    monitor-exit v3

    return-void

    .line 710
    :cond_0
    iget-object v6, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v5, v6}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 711
    const-class v7, Lorg/apache/tools/ant/Task;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 712
    :goto_0
    iget-object v7, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_2

    const-string v0, "task "

    goto :goto_1

    :cond_2
    const-string v0, "datatype "

    .line 713
    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v5, v6}, Lorg/apache/tools/ant/AntTypeDefinition;->similarDefinition(Lorg/apache/tools/ant/AntTypeDefinition;Lorg/apache/tools/ant/Project;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x3

    .line 712
    :cond_3
    invoke-virtual {v7, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 716
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 717
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateRestrictedDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    .locals 4

    .line 676
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 680
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 683
    monitor-enter v0

    .line 684
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 686
    invoke-virtual {v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 691
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 680
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private validDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)Z
    .locals 1

    .line 655
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addDataTypeDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 468
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 469
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 471
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    .line 472
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " +User datatype: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "     "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V
    .locals 1

    .line 482
    invoke-virtual {p1}, Lorg/apache/tools/ant/AntTypeDefinition;->isRestrict()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    goto :goto_0

    .line 485
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->updateRestrictedDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    :goto_0
    return-void
.end method

.method public addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 342
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/ComponentHelper;->checkTaskClass(Ljava/lang/Class;)V

    .line 343
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 344
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 346
    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    .line 347
    const-class p1, Lorg/apache/tools/ant/TaskAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdapterClass(Ljava/lang/Class;)V

    .line 348
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 349
    const-class p1, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setAdaptToClass(Ljava/lang/Class;)V

    .line 350
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/ComponentHelper;->updateDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    return-void
.end method

.method public checkTaskClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 371
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 377
    :try_start_0
    move-object v2, v0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    const-class v0, Lorg/apache/tools/ant/Task;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-static {p1, v0}, Lorg/apache/tools/ant/TaskAdapter;->checkTaskClass(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)V

    :cond_0
    return-void

    .line 381
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No public no-arg constructor in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 382
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 383
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is abstract"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 374
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not public"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 369
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 285
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createComponent(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p3}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 265
    instance-of v0, p2, Lorg/apache/tools/ant/Task;

    if-eqz v0, :cond_0

    .line 266
    move-object v0, p2

    check-cast v0, Lorg/apache/tools/ant/Task;

    .line 267
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Task;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 268
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/Task;->setTaskType(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getTaskName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/Task;->setTaskName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Task;->setOwningTarget(Lorg/apache/tools/ant/Target;)V

    .line 271
    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->init()V

    :cond_0
    return-object p2
.end method

.method public createDataType(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 573
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 515
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createNewTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "property"

    .line 516
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    const-class v0, Lorg/apache/tools/ant/taskdefs/Property;

    invoke-virtual {p0, v1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addTaskDefinition(Ljava/lang/String;Ljava/lang/Class;)V

    .line 520
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->createNewTask(Ljava/lang/String;)Lorg/apache/tools/ant/Task;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public diagnoseCreationFailure(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "Cause: The class "

    .line 863
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 864
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 865
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Problem: failed to create "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "user.home"

    .line 871
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 872
    new-instance v4, Ljava/io/File;

    sget-object v5, Lorg/apache/tools/ant/launch/Launcher;->USER_LIBDIR:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ant.home"

    .line 875
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "lib"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    .line 877
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move v5, v7

    goto :goto_0

    .line 882
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "ANT_HOME"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v6

    .line 884
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "        -"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 888
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    const-string v3, "        -the IDE Ant configuration dialogs"

    .line 890
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 893
    :cond_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n        -a directory added on the command line with the -lib argument"

    .line 895
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 902
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v4

    if-nez v4, :cond_2

    .line 905
    invoke-direct {p0, v2, p1, v3}, Lorg/apache/tools/ant/ComponentHelper;->printUnknownDefinition(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 909
    :cond_2
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v5, "org.apache.tools.ant."

    .line 910
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v8, "org.apache.tools.ant.types.optional"

    .line 911
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "org.apache.tools.ant.taskdefs.optional"

    .line 912
    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    move v8, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v8, v6

    :goto_3
    const/4 v9, 0x0

    .line 917
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntTypeDefinition;->innerGetTypeClass()Ljava/lang/Class;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v7

    move v10, v8

    goto :goto_4

    :catch_0
    move-exception v10

    .line 926
    invoke-direct {p0, v2, v8, v10, v3}, Lorg/apache/tools/ant/ComponentHelper;->printNotLoadDependentClass(Ljava/io/PrintWriter;ZLjava/lang/NoClassDefFoundError;Ljava/lang/String;)V

    move v8, v6

    move v10, v7

    goto :goto_4

    :catch_1
    xor-int/lit8 v10, v8, 0x1

    .line 923
    invoke-direct {p0, v2, p1, v8, v3}, Lorg/apache/tools/ant/ComponentHelper;->printClassNotFound(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/lang/String;)V

    move v8, v6

    :goto_4
    if-eqz v9, :cond_5

    .line 932
    :try_start_1
    iget-object v11, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v4, v9, v11}, Lorg/apache/tools/ant/AntTypeDefinition;->innerCreateAndSet(Ljava/lang/Class;Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    const-string v4, "The component could be instantiated."

    .line 934
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Cause:  A class needed by class "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " cannot be found: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "       "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Action: Determine what extra JAR files are needed, and place them in:"

    .line 959
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :catch_3
    move-exception p1

    .line 950
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Cause: The constructor threw the exception"

    .line 951
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_5

    .line 946
    :catch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cause: The constructor for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is private and cannot be invoked."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 942
    :catch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is abstract and cannot be instantiated."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 937
    :catch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " has no compatible constructor."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    move v7, v6

    :cond_5
    :goto_6
    move v6, v8

    .line 964
    :goto_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "Do not panic, this is a common problem."

    .line 965
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v10, :cond_6

    const-string p1, "It may just be a typographical error in the build file or the task/type declaration."

    .line 967
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    if-eqz v6, :cond_7

    const-string p1, "The commonest cause is a missing JAR."

    .line 971
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_9

    const-string p1, "This is quite a low level problem, which may need consultation with the author of the task."

    .line 974
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    const-string p1, "This may be the Ant team. Please file a defect or contact the developer team."

    .line 977
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const-string p1, "This does not appear to be a task bundled with Ant."

    .line 980
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Please take it up with the supplier of the third-party "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "If you have written it yourself, you probably have a bug to fix."

    .line 983
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 986
    :cond_9
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "This is not a bug; it is a configuration problem"

    .line 987
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    :goto_8
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 991
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 992
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public enterAntLib(Ljava/lang/String;)V
    .locals 1

    .line 726
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    .line 727
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public exitAntLib()V
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 742
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    return-void
.end method

.method public getAntTypeTable()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getComponentClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCurrentAntlibUri()Ljava/lang/String;
    .locals 1

    .line 734
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antLibCurrentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDataTypeDefinitions()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    if-eqz v2, :cond_0

    .line 426
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 427
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda4;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 428
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 430
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    .line 432
    iput-boolean v2, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTypeClassDefinitions:Z

    .line 434
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 436
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    return-object v0

    :catchall_0
    move-exception v2

    .line 434
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 435
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getDefinition(Ljava/lang/String;)Lorg/apache/tools/ant/AntTypeDefinition;
    .locals 1

    .line 308
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/ComponentHelper;->checkNamespace(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/AntTypeDefinition;

    return-object p1
.end method

.method public getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/ComponentHelper;->getElementName(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getElementName(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 6

    .line 608
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 610
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v2

    .line 611
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 612
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntTypeDefinition;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    .line 613
    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v5

    if-ne v0, v5, :cond_0

    .line 614
    invoke-virtual {v4}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The <"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "> type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    monitor-exit v2

    return-object p1

    .line 618
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getUnmappedElementName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 618
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getNext()Lorg/apache/tools/ant/ComponentHelper;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->next:Lorg/apache/tools/ant/ComponentHelper;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getRestrictedDefinitions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntTypeDefinition;",
            ">;"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTaskDefinitions()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 401
    :try_start_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    if-eqz v2, :cond_0

    .line 402
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 403
    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 404
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/ComponentHelper$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    .line 406
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v2, 0x0

    .line 408
    iput-boolean v2, p0, Lorg/apache/tools/ant/ComponentHelper;->rebuildTaskClassDefinitions:Z

    .line 410
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 412
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    return-object v0

    :catchall_0
    move-exception v2

    .line 410
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    .line 411
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public initDefaultDefinitions()V
    .locals 1

    .line 318
    invoke-direct {p0}, Lorg/apache/tools/ant/ComponentHelper;->initTasks()V

    .line 319
    invoke-direct {p0}, Lorg/apache/tools/ant/ComponentHelper;->initTypes()V

    .line 320
    new-instance v0, Lorg/apache/tools/ant/DefaultDefinitions;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/DefaultDefinitions;-><init>(Lorg/apache/tools/ant/ComponentHelper;)V

    invoke-virtual {v0}, Lorg/apache/tools/ant/DefaultDefinitions;->execute()V

    return-void
.end method

.method public initSubProject(Lorg/apache/tools/ant/ComponentHelper;)V
    .locals 5

    .line 231
    iget-object v0, p1, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    .line 232
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 233
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    monitor-enter v1

    .line 234
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 235
    iget-object v3, p0, Lorg/apache/tools/ant/ComponentHelper;->antTypeTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 237
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 239
    invoke-direct {p1}, Lorg/apache/tools/ant/ComponentHelper;->getCheckedNamespace()Ljava/util/Set;

    move-result-object v0

    .line 240
    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->checkedNamespaces:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 242
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    invoke-direct {p1}, Lorg/apache/tools/ant/ComponentHelper;->getRestrictedDefinition()Ljava/util/Map;

    move-result-object p1

    .line 245
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    monitor-enter v0

    .line 246
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->restrictedDefinitions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 242
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 237
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method synthetic lambda$getDataTypeDefinitions$2$org-apache-tools-ant-ComponentHelper(Ljava/util/Map$Entry;)Z
    .locals 2

    .line 428
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/tools/ant/Task;

    .line 429
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$getDataTypeDefinitions$3$org-apache-tools-ant-ComponentHelper(Ljava/util/Map$Entry;)V
    .locals 3

    .line 430
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->typeClassDefinitions:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 431
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    .line 430
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$getTaskDefinitions$0$org-apache-tools-ant-ComponentHelper(Ljava/util/Map$Entry;)Z
    .locals 2

    .line 404
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/tools/ant/Task;

    .line 405
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method synthetic lambda$getTaskDefinitions$1$org-apache-tools-ant-ComponentHelper(Ljava/util/Map$Entry;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lorg/apache/tools/ant/ComponentHelper;->taskClassDefinitions:Ljava/util/Hashtable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/AntTypeDefinition;

    iget-object v2, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object p1

    .line 406
    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setNext(Lorg/apache/tools/ant/ComponentHelper;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->next:Lorg/apache/tools/ant/ComponentHelper;

    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/apache/tools/ant/ComponentHelper;->project:Lorg/apache/tools/ant/Project;

    return-void
.end method
