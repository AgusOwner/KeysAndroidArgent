.class public final synthetic Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/util/ScriptRunnerCreator$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/tools/ant/util/ScriptRunnerCreator;->lambda$createRunner$2(Ljava/util/Set;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    return-object v0
.end method
