.class public Lorg/apache/tools/ant/helper/DefaultExecutor;
.super Ljava/lang/Object;
.source "DefaultExecutor.java"

# interfaces
.implements Lorg/apache/tools/ant/Executor;


# static fields
.field private static final SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/SingleCheckExecutor;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/DefaultExecutor;->SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeTargets(Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 39
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 41
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/apache/tools/ant/Project;->executeTarget(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 43
    invoke-virtual {p1}, Lorg/apache/tools/ant/Project;->isKeepGoingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    throw v1

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 51
    :cond_2
    throw v1
.end method

.method public getSubProjectExecutor()Lorg/apache/tools/ant/Executor;
    .locals 1

    .line 57
    sget-object v0, Lorg/apache/tools/ant/helper/DefaultExecutor;->SUB_EXECUTOR:Lorg/apache/tools/ant/helper/SingleCheckExecutor;

    return-object v0
.end method
