.class public final synthetic Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/Target;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Target;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/Target;

    return-void
.end method


# virtual methods
.method public final eval()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/Target$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/Target;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->lambda$setUnless$1$org-apache-tools-ant-Target()Z

    move-result v0

    return v0
.end method
