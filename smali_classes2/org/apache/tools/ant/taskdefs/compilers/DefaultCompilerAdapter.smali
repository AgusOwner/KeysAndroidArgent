.class public abstract Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;
.super Ljava/lang/Object;
.source "DefaultCompilerAdapter.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapter;
.implements Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterExtension;


# static fields
.field private static final COMMAND_LINE_LIMIT:I

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final JAVAC_ARG_FILE_CHARS_TO_QUOTE:Ljava/util/regex/Pattern;

.field protected static final lSep:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected attributes:Lorg/apache/tools/ant/taskdefs/Javac;

.field protected bootclasspath:Lorg/apache/tools/ant/types/Path;

.field protected compileClasspath:Lorg/apache/tools/ant/types/Path;

.field protected compileList:[Ljava/io/File;

.field protected compileSourcepath:Lorg/apache/tools/ant/types/Path;

.field protected debug:Z

.field protected depend:Z

.field protected deprecation:Z

.field protected destDir:Ljava/io/File;

.field protected encoding:Ljava/lang/String;

.field protected extdirs:Lorg/apache/tools/ant/types/Path;

.field protected includeAntRuntime:Z

.field protected includeJavaRuntime:Z

.field protected location:Lorg/apache/tools/ant/Location;

.field protected memoryInitialSize:Ljava/lang/String;

.field protected memoryMaximumSize:Ljava/lang/String;

.field protected moduleSourcepath:Lorg/apache/tools/ant/types/Path;

.field protected modulepath:Lorg/apache/tools/ant/types/Path;

.field protected optimize:Z

.field protected project:Lorg/apache/tools/ant/Project;

.field protected release:Ljava/lang/String;

.field protected src:Lorg/apache/tools/ant/types/Path;

.field protected target:Ljava/lang/String;

.field protected upgrademodulepath:Lorg/apache/tools/ant/types/Path;

.field protected verbose:Z


# direct methods
.method public static synthetic $r8$lambda$qb5LmhsTH7lXZ2b_YonFiJC4_cU(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "os/2"

    .line 54
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    .line 56
    sput v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->COMMAND_LINE_LIMIT:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1000

    .line 58
    sput v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->COMMAND_LINE_LIMIT:I

    .line 63
    :goto_0
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 68
    sget-object v0, Lorg/apache/tools/ant/util/StringUtils;->LINE_SEP:Ljava/lang/String;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->lSep:Ljava/lang/String;

    const-string v0, "[ #]"

    .line 71
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->JAVAC_ARG_FILE_CHARS_TO_QUOTE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->debug:Z

    .line 77
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->optimize:Z

    .line 78
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->deprecation:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->depend:Z

    .line 80
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->verbose:Z

    return-void
.end method

.method private adjustSourceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1.1"

    .line 947
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1.2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "1.3"

    :cond_1
    return-object p1
.end method

.method private assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 843
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 845
    invoke-static {p2}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isJavaVersion(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 846
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isJdkCompilerNickname(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getDefaultSource()Ljava/lang/String;
    .locals 1

    .line 901
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "9 in JDK 9"

    return-object v0

    .line 904
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1.8 in JDK 1.8"

    return-object v0

    .line 907
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1.7 in JDK 1.7"

    return-object v0

    .line 910
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1.5 in JDK 1.5 and 1.6"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method static synthetic lambda$logAndAddFilesToCompile$0(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .locals 0

    .line 497
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logAndAddFilesToCompile$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "    %s%n"

    .line 498
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mustSetSourceForTarget(Ljava/lang/String;)Z
    .locals 2

    .line 926
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "1."

    .line 929
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 930
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "1"

    .line 932
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "5"

    .line 933
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    const-string v0, "7"

    .line 934
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const-string v0, "8"

    .line 935
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "9"

    .line 936
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava10Plus()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method private setImplicitSourceSwitch(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 880
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 881
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "          WARNING"

    invoke-virtual {v0, v3, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 882
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "The -source switch defaults to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getDefaultSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 886
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "If you specify -target "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " you now must also specify -source "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 889
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ant will implicitly add -source "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for you.  Please change your build file."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 892
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    const-string v0, "-source"

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCurrentCompilerArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Commandline;->addArguments([Ljava/lang/String;)V

    return-void
.end method

.method protected addExtdirsToClasspath(Lorg/apache/tools/ant/types/Path;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    return-void
.end method

.method protected assumeJava10Plus()Z
    .locals 2

    .line 833
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javac10+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "10"

    .line 834
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 835
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/compilers/CompilerAdapterFactory;->isJdkCompilerNickname(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava11()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 631
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_1Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava12()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava13()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava14()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava15()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 718
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_6Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava16()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_6Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava17()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava18()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 781
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava19()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9()Z

    move-result v0

    return v0
.end method

.method protected assumeJava1_1Plus()Z
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 641
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javac1.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_2Plus()Z
    .locals 2

    .line 662
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 663
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javac1.2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 664
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_3Plus()Z
    .locals 2

    .line 684
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 685
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getCompilerVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javac1.3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_4Plus()Z
    .locals 2

    const-string v0, "javac1.4"

    const-string v1, "1.4"

    .line 706
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_5Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_5Plus()Z
    .locals 2

    const-string v0, "javac1.5"

    const-string v1, "1.5"

    .line 727
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_6Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_6Plus()Z
    .locals 2

    const-string v0, "javac1.6"

    const-string v1, "1.6"

    .line 748
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_7Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_7Plus()Z
    .locals 2

    const-string v0, "javac1.7"

    const-string v1, "1.7"

    .line 769
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava1_8Plus()Z
    .locals 2

    const-string v0, "javac1.8"

    const-string v1, "1.8"

    .line 790
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected assumeJava9()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava10Plus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected assumeJava9Plus()Z
    .locals 2

    const-string v0, "javac9"

    const-string v1, "9"

    .line 822
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "javac1.9"

    .line 823
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJavaXY(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 824
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava10Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected executeExternalCompile([Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    .line 512
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->executeExternalCompile([Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method protected executeExternalCompile([Ljava/lang/String;IZ)I
    .locals 12

    const-string v0, "\""

    const/4 v1, 0x0

    .line 547
    :try_start_0
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->COMMAND_LINE_LIMIT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    if-ltz p2, :cond_2

    .line 550
    :try_start_1
    sget-object v5, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 551
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    const-string v7, "files"

    const-string v8, ""

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getTempdir()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 550
    invoke-virtual/range {v5 .. v11}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v1

    .line 552
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v3, p2

    .line 554
    :goto_0
    :try_start_2
    array-length v5, p1

    if-ge v3, v5, :cond_1

    if-eqz p3, :cond_0

    .line 555
    sget-object v5, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->JAVAC_ARG_FILE_CHARS_TO_QUOTE:Ljava/util/regex/Pattern;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    aget-object v5, p1, v3

    sget-char v6, Ljava/io/File;->separatorChar:C

    const/16 v7, 0x2f

    .line 557
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 560
    :cond_0
    aget-object v5, p1, v3

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 562
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    add-int/lit8 p3, p2, 0x1

    .line 565
    new-array p3, p3, [Ljava/lang/String;

    .line 566
    invoke-static {p1, v4, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 569
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 552
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception p1

    .line 571
    :try_start_6
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "Error creating temporary file"

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->location:Lorg/apache/tools/ant/Location;

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_2
    move-object p3, p1

    .line 579
    :goto_3
    :try_start_7
    new-instance p2, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const/4 v3, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v5}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-direct {p2, v0}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    const-string v0, "openvms"

    .line 583
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 586
    invoke-virtual {p2, v5}, Lorg/apache/tools/ant/taskdefs/Execute;->setVMLauncher(Z)V

    .line 588
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 589
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 590
    invoke-virtual {p2, p3}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 591
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    .line 592
    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Execute;->getExitValue()I

    move-result p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_4

    .line 599
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    return p1

    :catch_1
    move-exception p2

    .line 594
    :try_start_8
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error running "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p1, p1, v4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " compiler"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->location:Lorg/apache/tools/ant/Location;

    invoke-direct {p3, p1, p2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_5

    .line 599
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 601
    :cond_5
    throw p1
.end method

.method protected getBootClassPath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 857
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 858
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    :cond_0
    const-string v1, "ignore"

    .line 861
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->concatSystemBootClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getCompileClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 3

    .line 174
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 179
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getJavac()Lorg/apache/tools/ant/taskdefs/Javac;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->isIncludeDestClasses()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v1, :cond_1

    .line 188
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 190
    :cond_1
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeAntRuntime:Z

    if-eqz v2, :cond_2

    const-string v2, "last"

    .line 191
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0

    :cond_2
    const-string v2, "ignore"

    .line 193
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 196
    :goto_0
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeJavaRuntime:Z

    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    :cond_3
    return-object v0
.end method

.method public getJavac()Lorg/apache/tools/ant/taskdefs/Javac;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    return-object v0
.end method

.method protected getModulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 209
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 210
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->modulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    :cond_0
    return-object v0
.end method

.method protected getModulesourcepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 235
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 236
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->add(Lorg/apache/tools/ant/types/Path;)V

    :cond_0
    return-object v0
.end method

.method protected getNoDebugArgument()Ljava/lang/String;
    .locals 1

    .line 875
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-g:none"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public getSupportedFileExtensions()[Ljava/lang/String;
    .locals 1

    const-string v0, "java"

    .line 157
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;
    .locals 2

    .line 222
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 223
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    :cond_0
    return-object v0
.end method

.method protected logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 5

    .line 491
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Compilation "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->describeArguments()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 493
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    .line 494
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileList:[Ljava/io/File;

    array-length v4, v4

    if-ne v4, v1, :cond_0

    const-string v1, "File"

    goto :goto_0

    :cond_0
    const-string v1, "Files"

    :goto_0
    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "%s to be compiled:"

    .line 493
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 496
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileList:[Ljava/io/File;

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/types/Commandline;)V

    .line 497
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 498
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, ""

    .line 499
    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 496
    invoke-virtual {v0, p1, v2}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setJavac(Lorg/apache/tools/ant/taskdefs/Javac;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    .line 111
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSrcdir()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->src:Lorg/apache/tools/ant/types/Path;

    .line 112
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDestdir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    .line 113
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->encoding:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDebug()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->debug:Z

    .line 115
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getOptimize()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->optimize:Z

    .line 116
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDeprecation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->deprecation:Z

    .line 117
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getDepend()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->depend:Z

    .line 118
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getVerbose()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->verbose:Z

    .line 119
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->target:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getRelease()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getBootclasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->bootclasspath:Lorg/apache/tools/ant/types/Path;

    .line 122
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getExtdirs()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    .line 123
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getFileList()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileList:[Ljava/io/File;

    .line 124
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileClasspath:Lorg/apache/tools/ant/types/Path;

    .line 125
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->modulepath:Lorg/apache/tools/ant/types/Path;

    .line 126
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->upgrademodulepath:Lorg/apache/tools/ant/types/Path;

    .line 127
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getSourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 128
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getModulesourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    .line 129
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    .line 130
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->location:Lorg/apache/tools/ant/Location;

    .line 131
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getIncludeantruntime()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeAntRuntime:Z

    .line 132
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getIncludejavaruntime()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->includeJavaRuntime:Z

    .line 133
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getMemoryInitialSize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryInitialSize:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Javac;->getMemoryMaximumSize()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryMaximumSize:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->moduleSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->src:Lorg/apache/tools/ant/types/Path;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-nez p1, :cond_0

    .line 137
    new-instance p1, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    :cond_0
    return-void
.end method

.method protected setupJavacCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommand(Z)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method

.method protected setupJavacCommand(Z)Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    .line 479
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 480
    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    .line 481
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    return-object v0
.end method

.method protected setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    move-result-object p1

    return-object p1
.end method

.method protected setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;
    .locals 7

    .line 260
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->compileSourcepath:Lorg/apache/tools/ant/types/Path;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->src:Lorg/apache/tools/ant/types/Path;

    .line 270
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "-J-X"

    goto :goto_1

    :cond_1
    const-string v2, "-J-"

    .line 272
    :goto_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryInitialSize:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 273
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v3

    if-nez v3, :cond_2

    .line 274
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v5, "Since fork is false, ignoring memoryInitialSize setting."

    invoke-virtual {v3, v5, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 278
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryInitialSize:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 283
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryMaximumSize:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 284
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Javac;->isForkedJavac()Z

    move-result v3

    if-nez v3, :cond_4

    .line 285
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "Since fork is false, ignoring memoryMaximumSize setting."

    invoke-virtual {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_3

    .line 289
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mx"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->memoryMaximumSize:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 294
    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getNowarn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 295
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-nowarn"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 298
    :cond_6
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->deprecation:Z

    if-eqz v2, :cond_7

    .line 299
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-deprecation"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 302
    :cond_7
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    if-eqz v2, :cond_8

    .line 303
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-d"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->destDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 307
    :cond_8
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    const-string v3, "-classpath"

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result v2

    if-nez v2, :cond_a

    .line 312
    new-instance v2, Lorg/apache/tools/ant/types/Path;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->project:Lorg/apache/tools/ant/Project;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 313
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Path;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 315
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v3, :cond_9

    .line 316
    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Path;->addExtdirs(Lorg/apache/tools/ant/types/Path;)V

    .line 318
    :cond_9
    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 319
    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    .line 320
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_4

    .line 322
    :cond_a
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 325
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 326
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-sourcepath"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 329
    :cond_b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v0

    if-nez v0, :cond_e

    .line 330
    :cond_c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->target:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 331
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-target"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 335
    :cond_d
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 337
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-bootclasspath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 342
    :cond_e
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 343
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-extdirs"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->extdirs:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 348
    :cond_f
    :goto_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 349
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-encoding"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 352
    :cond_10
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->debug:Z

    if-eqz v0, :cond_13

    const-string v0, "-g"

    if-eqz p2, :cond_12

    .line 353
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 354
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {p2}, Lorg/apache/tools/ant/taskdefs/Javac;->getDebugLevel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 356
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-g:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_5

    .line 358
    :cond_11
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_5

    .line 361
    :cond_12
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_5

    .line 363
    :cond_13
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getNoDebugArgument()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 364
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getNoDebugArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 366
    :cond_14
    :goto_5
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->optimize:Z

    if-eqz p2, :cond_15

    .line 367
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    const-string v0, "-O"

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 370
    :cond_15
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->depend:Z

    if-eqz p2, :cond_18

    .line 371
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_3Plus()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 372
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v0, "depend attribute is not supported by the modern compiler"

    invoke-virtual {p2, v0, v4}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    goto :goto_6

    .line 375
    :cond_16
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_2Plus()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 376
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    const-string v0, "-Xdepend"

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_6

    .line 378
    :cond_17
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    const-string v0, "-depend"

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 382
    :cond_18
    :goto_6
    iget-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->verbose:Z

    if-eqz p2, :cond_19

    .line 383
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p2

    const-string v0, "-verbose"

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 386
    :cond_19
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->addCurrentCompilerArgs(Lorg/apache/tools/ant/types/Commandline;)V

    return-object p1
.end method

.method protected setupModernJavacCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    .line 457
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 458
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupModernJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;

    .line 460
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    return-object v0
.end method

.method protected setupModernJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;)Lorg/apache/tools/ant/types/Commandline;
    .locals 4

    const/4 v0, 0x1

    .line 398
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setupJavacCommandlineSwitches(Lorg/apache/tools/ant/types/Commandline;Z)Lorg/apache/tools/ant/types/Commandline;

    .line 399
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_4Plus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 400
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Javac;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 402
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava9Plus()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 415
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getBootClassPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Path;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 416
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v2, "Ignoring source, target and bootclasspath as release has been set"

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;I)V

    .line 420
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "--release"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 403
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->release:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 404
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v3, "Support for javac --release has been added in Java9 ignoring it"

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 408
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-source"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-direct {p0, v2}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->adjustSourceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    .line 411
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->mustSetSourceForTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 412
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->adjustSourceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->setImplicitSourceSwitch(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getModulesourcepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 426
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "--module-source-path"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 429
    :cond_7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getModulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 431
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "--module-path"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 434
    :cond_8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->getUpgrademodulepath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 436
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "--upgrade-module-path"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 439
    :cond_9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Javac;->getNativeHeaderDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 440
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->assumeJava1_8Plus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 441
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    const-string v1, "Support for javac -h has been added in Java8, ignoring it"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Javac;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 444
    :cond_a
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-h"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/compilers/DefaultCompilerAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Javac;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Javac;->getNativeHeaderDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    :cond_b
    :goto_2
    return-object p1
.end method
