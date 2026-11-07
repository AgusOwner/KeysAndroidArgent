.class public Lorg/apache/tools/ant/taskdefs/rmic/XNewRmic;
.super Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;
.source "XNewRmic.java"


# static fields
.field public static final COMPILER_NAME:Ljava/lang/String; = "xnew"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;-><init>()V

    return-void
.end method


# virtual methods
.method protected setupRmicCommand()Lorg/apache/tools/ant/types/Commandline;
    .locals 1

    const-string v0, "-Xnew"

    .line 42
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-super {p0, v0}, Lorg/apache/tools/ant/taskdefs/rmic/ForkingSunRmic;->setupRmicCommand([Ljava/lang/String;)Lorg/apache/tools/ant/types/Commandline;

    move-result-object v0

    return-object v0
.end method
