.class Lorg/apache/tools/ant/util/ScriptRunnerCreator$1;
.super Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;
.source "ScriptRunnerCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/ScriptRunnerCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method validateManager(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 0

    const-string p1, "org.apache.bsf.BSFManager"

    .line 91
    invoke-static {p1}, Lorg/apache/tools/ant/util/LoaderUtils;->classNameToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/util/ScriptFixBSFPath;

    invoke-direct {p1}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;-><init>()V

    invoke-virtual {p1, p3, p2}, Lorg/apache/tools/ant/util/ScriptFixBSFPath;->fixClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
