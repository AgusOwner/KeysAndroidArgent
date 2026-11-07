.class public final synthetic Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

.field public final synthetic f$1:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;->f$1:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/taskdefs/Tstamp;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;->f$1:Ljava/util/Date;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->lambda$execute$0$org-apache-tools-ant-taskdefs-Tstamp(Ljava/util/Date;Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;)V

    return-void
.end method
