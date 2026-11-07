.class public Lorg/apache/tools/ant/taskdefs/Ant;
.super Lorg/apache/tools/ant/Task;
.source "Ant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;,
        Lorg/apache/tools/ant/taskdefs/Ant$Reference;,
        Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private antFile:Ljava/lang/String;

.field private dir:Ljava/io/File;

.field private inheritAll:Z

.field private inheritRefs:Z

.field private newProject:Lorg/apache/tools/ant/Project;

.field private out:Ljava/io/PrintStream;

.field private output:Ljava/lang/String;

.field private properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Property;",
            ">;"
        }
    .end annotation
.end field

.field private propertySets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/PropertySet;",
            ">;"
        }
    .end annotation
.end field

.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Ant$Reference;",
            ">;"
        }
    .end annotation
.end field

.field private targetAttributeSet:Z

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useNativeBasedir:Z


# direct methods
.method public static synthetic $r8$lambda$LN6VJxjnleXzjUvA117vWd3lDRw(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 70
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Ant;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 123
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    .line 91
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    .line 94
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    .line 100
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    .line 109
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    .line 118
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Task;)V
    .locals 3

    .line 131
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 79
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    .line 91
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    .line 94
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    .line 100
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    .line 109
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    .line 118
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    .line 132
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Ant;->bindToOwner(Lorg/apache/tools/ant/Task;)V

    return-void
.end method

.method private addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;",
            ")V"
        }
    .end annotation

    .line 613
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda5;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private addReferences()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/HashMap;

    .line 514
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getReferences()Ljava/util/Hashtable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 515
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/Ant$Reference;

    .line 516
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Ant$Reference;->getRefId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 521
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Parent project doesn\'t contain any reference \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Ant$Reference;->getToRefid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v3

    .line 533
    :cond_1
    invoke-direct {p0, v3, v2}, Lorg/apache/tools/ant/taskdefs/Ant;->copyReference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the refid attribute is required for reference elements"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_3
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    if-eqz v1, :cond_5

    .line 539
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getReferences()Ljava/util/Hashtable;

    move-result-object v1

    .line 540
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 541
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 544
    :cond_4
    invoke-direct {p0, v2, v2}, Lorg/apache/tools/ant/taskdefs/Ant;->copyReference(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/Project;->inheritIDReferences(Lorg/apache/tools/ant/Project;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private copyReference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Adding clone of reference "

    .line 560
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No object referenced by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". Can\'t copy to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    return-void

    .line 568
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "clone"

    new-array v6, v4, [Ljava/lang/Class;

    .line 571
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_1

    new-array v6, v4, [Ljava/lang/Object;

    .line 573
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :catch_0
    :cond_1
    instance-of v0, v1, Lorg/apache/tools/ant/ProjectComponent;

    if-eqz v0, :cond_2

    .line 581
    move-object p1, v1

    check-cast p1, Lorg/apache/tools/ant/ProjectComponent;

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/ProjectComponent;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "setProject"

    new-array v5, v2, [Ljava/lang/Class;

    .line 584
    const-class v6, Lorg/apache/tools/ant/Project;

    aput-object v6, v5, v4

    .line 585
    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    new-array v2, v2, [Ljava/lang/Object;

    .line 587
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 593
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error setting new project instance for reference with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 599
    :catch_2
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private initializeProject()V
    .locals 3

    .line 196
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->setInputHandler(Lorg/apache/tools/ant/input/InputHandler;)V

    .line 198
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBuildListeners()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda6;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 200
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 202
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 203
    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ant;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v2, v1, v0}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 208
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    .line 209
    new-instance v0, Lorg/apache/tools/ant/DefaultLogger;

    invoke-direct {v0}, Lorg/apache/tools/ant/DefaultLogger;-><init>()V

    const/4 v1, 0x2

    .line 210
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->setMessageOutputLevel(I)V

    .line 211
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->setOutputPrintStream(Ljava/io/PrintStream;)V

    .line 212
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/DefaultLogger;->setErrorPrintStream(Ljava/io/PrintStream;)V

    .line 213
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ant: Can\'t set output to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->USER:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    goto :goto_2

    .line 222
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->copyUserProperties(Lorg/apache/tools/ant/Project;)V

    .line 225
    :goto_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    if-nez v0, :cond_3

    .line 228
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->initProperties()V

    goto :goto_3

    .line 232
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    .line 235
    :goto_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/PropertySet;

    .line 236
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->PLAIN:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method static synthetic lambda$execute$1(Ljava/lang/String;Lorg/apache/tools/ant/Target;)Z
    .locals 0

    .line 422
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Target;->dependsOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private overrideProperties()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 484
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 485
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/Property;

    .line 486
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 487
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 490
    :cond_0
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 494
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda3;-><init>(Lorg/apache/tools/ant/taskdefs/Ant;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda4;-><init>()V

    .line 495
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 497
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    if-eqz v0, :cond_3

    .line 498
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getInheritedProperties()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->INHERITED:Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Ant;->addAlmostAll(Ljava/util/Map;Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;)V

    goto :goto_2

    .line 501
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->copyInheritedProperties(Lorg/apache/tools/ant/Project;)V

    :goto_2
    return-void
.end method

.method private reinit()V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->init()V

    return-void
.end method


# virtual methods
.method public addConfiguredTarget(Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;)V
    .locals 1

    .line 713
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    if-nez v0, :cond_1

    .line 717
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Ant$TargetElement;->getName()Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 719
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "target name must not be empty"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 714
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "nested target is incompatible with the target attribute"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addPropertyset(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->propertySets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReference(Lorg/apache/tools/ant/taskdefs/Ant$Reference;)V
    .locals 1

    .line 704
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createProperty()Lorg/apache/tools/ant/taskdefs/Property;
    .locals 3

    .line 691
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Property;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Property;-><init>(ZLorg/apache/tools/ant/Project;)V

    .line 692
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getNewProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    const-string v1, "property"

    .line 693
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Property;->setTaskName(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "."

    const-string v1, "ant.file"

    const-string v2, "Exiting "

    const-string v3, "Entering "

    const-string v4, "calling target(s) "

    .line 339
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 340
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 341
    new-instance v7, Lorg/apache/tools/ant/util/VectorSet;

    iget-object v8, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    invoke-direct {v7, v8}, Lorg/apache/tools/ant/util/VectorSet;-><init>(Ljava/util/Collection;)V

    const/4 v8, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getNewProject()Lorg/apache/tools/ant/Project;

    .line 345
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    if-eqz v9, :cond_0

    .line 346
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 349
    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->initializeProject()V

    .line 351
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    if-eqz v9, :cond_1

    .line 352
    iget-boolean v10, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    if-nez v10, :cond_2

    .line 353
    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v10, v9}, Lorg/apache/tools/ant/Project;->setBaseDir(Ljava/io/File;)V

    if-eqz v5, :cond_2

    .line 356
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    const-string v10, "basedir"

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 357
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 356
    invoke-virtual {v9, v10, v11}, Lorg/apache/tools/ant/Project;->setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 364
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->overrideProperties()V

    .line 366
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    if-nez v9, :cond_3

    .line 367
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getDefaultBuildFile()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 370
    :cond_3
    sget-object v9, Lorg/apache/tools/ant/taskdefs/Ant;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 371
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 373
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "[default]"

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " in build file "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    .line 373
    invoke-virtual {p0, v4, v10}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 376
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    iget-object v11, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v4, v1, v11}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    .line 381
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 382
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "antcall"

    .line 383
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "antcall must not be used at the top level."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s task at the top level must not invoke its own build file."

    new-array v2, v11, [Ljava/lang/Object;

    .line 389
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 393
    :cond_6
    :try_start_1
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-static {v4, v9}, Lorg/apache/tools/ant/ProjectHelper;->configureProject(Lorg/apache/tools/ant/Project;Ljava/io/File;)V
    :try_end_1
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 399
    :try_start_2
    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 400
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->getDefaultTarget()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 402
    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_7
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v4, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 408
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 410
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getOwningTarget()Lorg/apache/tools/ant/Target;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Target;->getName()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v7, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 418
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->getTargets()Ljava/util/Hashtable;

    move-result-object v4

    .line 420
    invoke-virtual {v7}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;

    invoke-direct {v13, v4}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-interface {v9, v13}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v9, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda1;-><init>()V

    .line 421
    invoke-interface {v4, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v9, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda2;

    invoke-direct {v9, v1}, Lorg/apache/tools/ant/taskdefs/Ant$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-interface {v4, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    .line 423
    :cond_8
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s task calling a target that depends on its parent target \'%s\'."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 425
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    aput-object v1, v3, v11

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 413
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s task calling its own parent target."

    new-array v2, v11, [Ljava/lang/Object;

    .line 415
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getTaskName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 429
    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->addReferences()V

    .line 431
    invoke-virtual {v7}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v11, :cond_b

    .line 432
    invoke-virtual {v7, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v7, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_c

    .line 435
    :cond_b
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v10}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 436
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->fireSubBuildStarted()V

    .line 437
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1, v7}, Lorg/apache/tools/ant/Project;->executeTargets(Ljava/util/Vector;)V
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v8}, Lorg/apache/tools/ant/Project;->fireSubBuildFinished(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v3, v8

    goto :goto_3

    :catch_0
    move-exception v1

    .line 440
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 441
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    move-object v14, v3

    move-object v3, v1

    move-object v1, v14

    .line 443
    :goto_3
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Lorg/apache/tools/ant/taskdefs/Ant;->log(Ljava/lang/String;I)V

    .line 444
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/Project;->fireSubBuildFinished(Ljava/lang/Throwable;)V

    .line 445
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 449
    :cond_c
    :goto_4
    iput-object v8, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    .line 450
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/taskdefs/Property;

    .line 451
    invoke-virtual {v1, v8}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_5

    .line 454
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    if-eqz v0, :cond_e

    .line 455
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 457
    :cond_e
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 458
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    return-void

    :catch_1
    move-exception v0

    .line 396
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    .line 395
    invoke-static {v0, v1}, Lorg/apache/tools/ant/ProjectHelper;->addLocationToBuildException(Lorg/apache/tools/ant/BuildException;Lorg/apache/tools/ant/Location;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    .line 449
    iput-object v8, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    .line 450
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/Property;

    .line 451
    invoke-virtual {v2, v8}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_6

    .line 454
    :cond_f
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->out:Ljava/io/PrintStream;

    if-eqz v1, :cond_10

    .line 455
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 457
    :cond_10
    iput-object v5, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    .line 458
    iput-object v6, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    .line 459
    throw v0
.end method

.method protected getDefaultBuildFile()Ljava/lang/String;
    .locals 1

    const-string v0, "build.xml"

    return-object v0
.end method

.method protected getNewProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-nez v0, :cond_0

    .line 741
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->reinit()V

    .line 743
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public handleErrorFlush(Ljava/lang/String;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 326
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxFlush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleErrorOutput(Ljava/lang/String;)V
    .locals 2

    .line 308
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxOutput(Ljava/lang/String;Z)V

    goto :goto_0

    .line 311
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleErrorOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleFlush(Ljava/lang/String;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxFlush(Ljava/lang/String;Z)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleFlush(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleInput([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/tools/ant/Project;->demuxInput([BII)I

    move-result p1

    return p1

    .line 277
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/tools/ant/Task;->handleInput([BII)I

    move-result p1

    return p1
.end method

.method public handleOutput(Ljava/lang/String;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, p1, v1}, Lorg/apache/tools/ant/Project;->demuxOutput(Ljava/lang/String;Z)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/tools/ant/Task;->handleOutput(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Ant;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->createSubProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    .line 171
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->setJavaVersionProperty()V

    return-void
.end method

.method synthetic lambda$addAlmostAll$3$org-apache-tools-ant-taskdefs-Ant(Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 614
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "basedir"

    .line 615
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ant.file"

    .line 616
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 621
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Ant$1;->$SwitchMap$org$apache$tools$ant$taskdefs$Ant$PropertyType:[I

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Ant$PropertyType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 633
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/Project;->setInheritedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/Project;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 626
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, p2, p3}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method synthetic lambda$initializeProject$0$org-apache-tools-ant-taskdefs-Ant(Lorg/apache/tools/ant/BuildListener;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->addBuildListener(Lorg/apache/tools/ant/BuildListener;)V

    return-void
.end method

.method synthetic lambda$overrideProperties$2$org-apache-tools-ant-taskdefs-Ant(Lorg/apache/tools/ant/taskdefs/Property;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->newProject:Lorg/apache/tools/ant/Project;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/Property;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public setAntfile(Ljava/lang/String;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->antFile:Ljava/lang/String;

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->dir:Ljava/io/File;

    return-void
.end method

.method public setInheritAll(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritAll:Z

    return-void
.end method

.method public setInheritRefs(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->inheritRefs:Z

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->output:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    .line 668
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 672
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->targetAttributeSet:Z

    return-void

    .line 669
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "target attribute must not be empty"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseNativeBasedir(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Ant;->useNativeBasedir:Z

    return-void
.end method
