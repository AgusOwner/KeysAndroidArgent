.class public abstract Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;
.super Ljava/lang/Object;
.source "DefaultRmicAdapter.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/rmic/RmicAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;
    }
.end annotation


# static fields
.field private static final RAND:Ljava/util/Random;

.field public static final RMI_SKEL_SUFFIX:Ljava/lang/String; = "_Skel"

.field public static final RMI_STUB_SUFFIX:Ljava/lang/String; = "_Stub"

.field public static final RMI_TIE_SUFFIX:Ljava/lang/String; = "_Tie"

.field public static final STUB_1_1:Ljava/lang/String; = "-v1.1"

.field public static final STUB_1_2:Ljava/lang/String; = "-v1.2"

.field public static final STUB_COMPAT:Ljava/lang/String; = "-vcompat"

.field public static final STUB_OPTION_1_1:Ljava/lang/String; = "1.1"

.field public static final STUB_OPTION_1_2:Ljava/lang/String; = "1.2"

.field public static final STUB_OPTION_COMPAT:Ljava/lang/String; = "compat"


# instance fields
.field private attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

.field private mapper:Lorg/apache/tools/ant/util/FileNameMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->RAND:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;)Lorg/apache/tools/ant/taskdefs/Rmic;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Random;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->RAND:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic lambda$logAndAddFilesToCompile$0(Lorg/apache/tools/ant/types/Commandline;Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private verifyArguments(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 4

    const-string v0, "9"

    .line 362
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "-Xnew"

    .line 364
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "JDK9 has removed support for -Xnew"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method


# virtual methods
.method protected addStubVersionOptions()Ljava/lang/String;
    .locals 5

    .line 284
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getStubVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-vcompat"

    if-eqz v0, :cond_3

    const-string v2, "1.1"

    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "-v1.1"

    goto :goto_0

    :cond_0
    const-string v2, "1.2"

    .line 290
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "-v1.2"

    goto :goto_0

    :cond_1
    const-string v2, "compat"

    .line 292
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 296
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown stub option "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 302
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    .line 303
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiop()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    .line 304
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdl()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method protected areIiopAndIdlSupported()Z
    .locals 1

    const-string v0, "11"

    .line 187
    invoke-static {v0}, Lorg/apache/tools/ant/util/JavaEnvUtils;->isAtLeastJavaVersion(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected filterJvmCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 330
    array-length v0, p1

    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 332
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    const-string v5, "-J"

    .line 333
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 334
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Dropping "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " from compiler arguments"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    .line 339
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getCompileClasspath()Lorg/apache/tools/ant/types/Path;
    .locals 3

    .line 154
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 157
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getBase()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    .line 162
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lorg/apache/tools/ant/types/Path;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 166
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIncludeantruntime()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "last"

    .line 167
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0

    :cond_1
    const-string v2, "ignore"

    .line 169
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Path;->concatSystemClasspath(Ljava/lang/String;)Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Path;->addExisting(Lorg/apache/tools/ant/types/Path;)V

    .line 172
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIncludejavaruntime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    :cond_2
    return-object v0
.end method

.method public getMapper()Lorg/apache/tools/ant/util/FileNameMapper;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-object v0
.end method

.method public getRmic()Lorg/apache/tools/ant/taskdefs/Rmic;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    return-object v0
.end method

.method protected getSkelClassSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "_Skel"

    return-object v0
.end method

.method protected getStubClassSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "_Stub"

    return-object v0
.end method

.method protected getTieClassSuffix()Ljava/lang/String;
    .locals 1

    const-string v0, "_Tie"

    return-object v0
.end method

.method protected logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V
    .locals 5

    .line 349
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Rmic;->getCompileList()Ljava/util/Vector;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Compilation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->describeArguments()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "File"

    goto :goto_0

    :cond_0
    const-string v2, "Files"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to be compiled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/Commandline;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p1

    const-string v0, "    "

    .line 357
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v0, p1, v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    return-void
.end method

.method protected preprocessCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public setRmic(Lorg/apache/tools/ant/taskdefs/Rmic;)V
    .locals 1

    .line 82
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    .line 83
    new-instance p1, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$RmicFileNameMapper;-><init>(Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter$1;)V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->mapper:Lorg/apache/tools/ant/util/FileNameMapper;

    return-void
.end method

.method protected setupRmicCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->setupRmicCommand([Ljava/lang/String;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method

.method protected setupRmicCommand([Ljava/lang/String;)Lorg/apache/tools/ant/types/Commandline;
    .locals 5

    .line 205
    new-instance v0, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    if-eqz p1, :cond_0

    .line 208
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 209
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->getCompileClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object p1

    .line 215
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-d"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getOutputDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    .line 218
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getExtdirs()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-extdirs"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getExtdirs()Lorg/apache/tools/ant/types/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 223
    :cond_1
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    const-string v2, "-classpath"

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setPath(Lorg/apache/tools/ant/types/Path;)V

    .line 225
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->addStubVersionOptions()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 232
    :cond_2
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getSourceBase()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v1, "-keepgenerated"

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 236
    :cond_3
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiop()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_5

    .line 237
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->areIiopAndIdlSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 240
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    const-string v2, "IIOP has been turned on."

    invoke-virtual {p1, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v2, "-iiop"

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiopopts()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 243
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IIOP Options: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiopopts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 245
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIiopopts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 238
    :cond_4
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "this rmic implementation doesn\'t support the -iiop switch"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdl()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->areIiopAndIdlSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 253
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v2, "-idl"

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    const-string v2, "IDL has been turned on."

    invoke-virtual {p1, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    .line 255
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdlopts()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 256
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdlopts()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 257
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IDL Options: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/Rmic;->getIdlopts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lorg/apache/tools/ant/taskdefs/Rmic;->log(Ljava/lang/String;I)V

    goto :goto_2

    .line 251
    :cond_6
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "this rmic implementation doesn\'t support the -idl switch"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getDebug()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 263
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    const-string v1, "-g"

    invoke-virtual {p1, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 266
    :cond_8
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->attributes:Lorg/apache/tools/ant/taskdefs/Rmic;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Rmic;->getCurrentCompilerArgs()[Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->preprocessCompilerArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Commandline;->addArguments([Ljava/lang/String;)V

    .line 270
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->verifyArguments(Lorg/apache/tools/ant/types/Commandline;)V

    .line 272
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/DefaultRmicAdapter;->logAndAddFilesToCompile(Lorg/apache/tools/ant/types/Commandline;)V

    return-object v0
.end method
