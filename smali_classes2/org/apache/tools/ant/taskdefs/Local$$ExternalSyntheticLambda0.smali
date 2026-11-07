.class public final synthetic Lorg/apache/tools/ant/taskdefs/Local$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/property/LocalProperties;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/property/LocalProperties;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Local$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/property/LocalProperties;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Local$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/property/LocalProperties;

    check-cast p1, Lorg/apache/tools/ant/taskdefs/Local$Name;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/taskdefs/Local;->lambda$execute$0(Lorg/apache/tools/ant/property/LocalProperties;Lorg/apache/tools/ant/taskdefs/Local$Name;)V

    return-void
.end method
