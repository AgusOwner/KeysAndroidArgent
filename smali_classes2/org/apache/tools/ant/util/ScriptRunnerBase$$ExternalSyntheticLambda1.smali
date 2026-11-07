.class public final synthetic Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/util/ScriptRunnerBase;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/ScriptRunnerBase;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    iput-object p2, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;->f$0:Lorg/apache/tools/ant/util/ScriptRunnerBase;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerBase$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/ScriptRunnerBase;->lambda$bindToComponent$1$org-apache-tools-ant-util-ScriptRunnerBase(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
