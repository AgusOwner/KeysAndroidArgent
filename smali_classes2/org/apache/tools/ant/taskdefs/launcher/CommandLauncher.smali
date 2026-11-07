.class public Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
.super Ljava/lang/Object;
.source "CommandLauncher.java"


# static fields
.field protected static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

.field private static vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    const/4 v0, 0x0

    .line 42
    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    .line 43
    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    const-string v0, "os/2"

    .line 46
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/launcher/Java13CommandLauncher;-><init>()V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    :cond_0
    const-string v1, "mac"

    .line 50
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "unix"

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/MacCommandLauncher;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto/16 :goto_0

    .line 53
    :cond_1
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/launcher/OS2CommandLauncher;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    :cond_2
    const-string v0, "windows"

    .line 56
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    const-string v1, "win9x"

    .line 59
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 61
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/taskdefs/launcher/WinNTCommandLauncher;-><init>(Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;

    const-string v2, "bin/antRun.bat"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    :cond_4
    const-string v0, "netware"

    .line 67
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    .line 71
    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;

    const-string v2, "bin/antRun.pl"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/launcher/PerlScriptCommandLauncher;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    :cond_5
    const-string v0, "openvms"

    .line 73
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 75
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/launcher/VmsCommandLauncher;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    goto :goto_0

    .line 78
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;-><init>()V

    const-string v2, "bin/antRun"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/taskdefs/launcher/ScriptCommandLauncher;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractLauncher(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .locals 1

    .line 168
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    return-object p0
.end method

.method public static getShellLauncher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .locals 1

    const-string v0, "ant.shellLauncher"

    .line 141
    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->extractLauncher(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    .line 144
    sget-object p0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->shellLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    :cond_0
    return-object p0
.end method

.method private static getSystemLauncher(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .locals 4

    .line 174
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 182
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not instantiate launcher class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 183
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVMLauncher(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .locals 1

    const-string v0, "ant.vmLauncher"

    .line 158
    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->extractLauncher(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    .line 161
    sget-object p0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->vmLauncher:Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$extractLauncher$0(Ljava/lang/String;Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .locals 0

    .line 169
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    return-object p0
.end method

.method static synthetic lambda$extractLauncher$1(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;
    .locals 0

    .line 170
    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->getSystemLauncher(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;

    move-result-object p0

    return-object p0
.end method

.method public static setShellLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "ant.shellLauncher"

    .line 211
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static setVMLauncher(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "ant.vmLauncher"

    .line 198
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Execute:CommandLauncher: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {p2}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 100
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 103
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1
.end method

.method public exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_0

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/launcher/CommandLauncher;->exec(Lorg/apache/tools/ant/Project;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    .line 129
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot execute a process in different directory under this JVM"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
