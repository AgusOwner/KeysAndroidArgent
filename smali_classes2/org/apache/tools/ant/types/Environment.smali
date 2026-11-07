.class public Lorg/apache/tools/ant/types/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Environment$Variable;
    }
.end annotation


# instance fields
.field protected variables:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/Environment$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    return-void
.end method

.method static synthetic lambda$getVariables$0(I)[Ljava/lang/String;
    .locals 0

    .line 159
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addVariable(Lorg/apache/tools/ant/types/Environment$Variable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getVariables()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/types/Environment$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVariablesVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lorg/apache/tools/ant/types/Environment$Variable;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/tools/ant/types/Environment;->variables:Ljava/util/Vector;

    return-object v0
.end method
