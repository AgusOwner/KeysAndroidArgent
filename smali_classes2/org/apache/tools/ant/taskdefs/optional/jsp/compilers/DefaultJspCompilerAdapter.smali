.class public abstract Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;
.super Ljava/lang/Object;
.source "DefaultJspCompilerAdapter.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/JspCompilerAdapter;


# instance fields
.field protected owner:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$logAndAddFilesToCompile$0(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$logAndAddFilesToCompile$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "    %s%n"

    .line 53
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setFile(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method protected addArg(Lorg/apache/tools/ant/types/CommandlineJava;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;->owner:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    return-object v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;->getJspc()Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    return-object v0
.end method

.method public implementsOwnDependencyChecking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected logAndAddFilesToCompile(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;Ljava/util/Vector;Lorg/apache/tools/ant/types/CommandlineJava;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/tools/ant/types/CommandlineJava;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compilation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/tools/ant/types/CommandlineJava;->describeJavaCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p2}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/types/CommandlineJava;)V

    .line 52
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 53
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    const-string v0, ""

    .line 54
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "s"

    :goto_0
    const/4 p2, 0x0

    aput-object v0, v2, p2

    aput-object p3, v2, v3

    const-string p2, "File%s to be compiled:%n%s"

    .line 55
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setJspc(Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/jsp/compilers/DefaultJspCompilerAdapter;->owner:Lorg/apache/tools/ant/taskdefs/optional/jsp/JspC;

    return-void
.end method
