.class public final synthetic Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Replace;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Replace;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/taskdefs/Replace;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/taskdefs/Replace;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Replace$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/Replace;->lambda$logFilterChain$1$org-apache-tools-ant-taskdefs-Replace(Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/Replace$Replacefilter;)V

    return-void
.end method
