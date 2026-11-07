.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Java;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Java;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;->f$0:Lorg/apache/tools/ant/taskdefs/Java;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/WeblogicDeploymentTool$$ExternalSyntheticLambda6;->f$0:Lorg/apache/tools/ant/taskdefs/Java;

    check-cast p1, Lorg/apache/tools/ant/types/Environment$Variable;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Java;->addSysproperty(Lorg/apache/tools/ant/types/Environment$Variable;)V

    return-void
.end method
