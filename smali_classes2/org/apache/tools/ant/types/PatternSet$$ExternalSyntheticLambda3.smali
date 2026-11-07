.class public final synthetic Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/Project;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/Project;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/Project;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/PatternSet$$ExternalSyntheticLambda3;->f$0:Lorg/apache/tools/ant/Project;

    check-cast p1, Lorg/apache/tools/ant/types/PatternSet$NameEntry;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/PatternSet;->lambda$makeArray$1(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/PatternSet$NameEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
