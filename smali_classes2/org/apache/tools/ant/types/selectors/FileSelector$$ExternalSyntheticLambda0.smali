.class public final synthetic Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/apache/tools/ant/types/selectors/FileSelector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/tools/ant/types/selectors/FileSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/selectors/FileSelector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/FileSelector$$ExternalSyntheticLambda0;->f$0:Lorg/apache/tools/ant/types/selectors/FileSelector;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector;->lambda$isSelected$0(Lorg/apache/tools/ant/types/selectors/FileSelector;Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
