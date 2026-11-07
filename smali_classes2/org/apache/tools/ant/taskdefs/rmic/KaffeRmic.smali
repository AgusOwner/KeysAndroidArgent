.class public Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.source "KaffeRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "kaffe"

.field private static final RMIC_CLASSNAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gnu.java.rmi.rmic.RMIC"

    const-string v1, "kaffe.rmi.rmic.RMIC"

    const-string v2, "gnu.classpath.tools.rmi.rmic.RMIC"

    .line 33
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->RMIC_CLASSNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;-><init>()V

    return-void
.end method

.method private static getRmicClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 105
    sget-object v0, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->RMIC_CLASSNAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 107
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 95
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->getRmicClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected areIiopAndIdlSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public execute()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    const-string v1, "Using Kaffe rmic"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 60
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->setupRmicCommand()Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    .line 62
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->getRmicClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot use Kaffe rmic, as it is not available.  None of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->RMIC_CLASSNAMES:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ", "

    .line 68
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " have been found. A common solution is to set the environment variable JAVA_HOME or CLASSPATH."

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 79
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->RMIC_CLASSNAMES:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v3, "-verbose"

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;)V

    .line 85
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 86
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 87
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/KaffeRmic;->getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->fork(Lorg/apache/tools/ant/ProjectComponent;)I

    move-result v0

    if-nez v0, :cond_4

    move v2, v5

    :cond_4
    return v2
.end method
