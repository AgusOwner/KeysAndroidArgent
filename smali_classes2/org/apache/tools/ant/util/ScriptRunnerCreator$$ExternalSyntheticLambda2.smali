.class public final synthetic Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/util/ScriptRunnerCreator;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/ClassLoader;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/util/ScriptRunnerCreator;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/util/ScriptRunnerCreator;

    iput-object p2, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;->f$2:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;->f$0:Lorg/apache/tools/ant/util/ScriptRunnerCreator;

    iget-object v1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda2;->f$2:Ljava/lang/ClassLoader;

    check-cast p1, Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->lambda$createRunner$0$org-apache-tools-ant-util-ScriptRunnerCreator(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/apache/tools/ant/util/ScriptRunnerCreator$ScriptRunnerFactory;)Lorg/apache/tools/ant/util/ScriptRunnerBase;

    move-result-object p1

    return-object p1
.end method
