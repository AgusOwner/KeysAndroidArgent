.class public final Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;
.super Lorg/apache/tools/ant/taskdefs/optional/native2ascii/DefaultNative2Ascii;
.source "KaffeNative2Ascii.java"


# static fields
.field public static final IMPLEMENTATION_NAME:Ljava/lang/String; = "kaffe"

.field private static final N2A_CLASSNAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gnu.classpath.tools.native2ascii.Native2ASCII"

    const-string v1, "kaffe.tools.native2ascii.Native2Ascii"

    .line 34
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;->N2A_CLASSNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/DefaultNative2Ascii;-><init>()V

    return-void
.end method

.method private static getN2aClass()Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 80
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;->N2A_CLASSNAMES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 82
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


# virtual methods
.method protected run(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/ProjectComponent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 59
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ExecuteJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;-><init>()V

    .line 60
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/KaffeNative2Ascii;->getN2aClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->setJavaCommand(Lorg/apache/tools/ant/types/Commandline;)V

    .line 68
    invoke-virtual {p2}, Lorg/apache/tools/ant/ProjectComponent;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/ExecuteJava;->execute(Lorg/apache/tools/ant/Project;)V

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "Couldn\'t load Kaffe\'s Native2Ascii class"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setup(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;->getReverse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/native2ascii/DefaultNative2Ascii;->setup(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/optional/Native2Ascii;)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "-reverse is not supported by Kaffe"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
