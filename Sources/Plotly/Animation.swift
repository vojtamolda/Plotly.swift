
/// **Warning** This is generated code and all changes will be eventually overwritten.
/// See `Sources/Codegen/Readme.md` for more details.


/// TODO.
public struct Animation: Encodable {
    /// Describes how a new animate call interacts with currently-running animations.
    /// 
    /// If `immediate`, current animations are interrupted and the new animation is started. If `next`,
    /// the current frame is allowed to complete, after which the new animation is started. If
    /// `afterall` all existing frames are animated to completion before the new animation is started.
    public enum Mode: String, Encodable {
        case immediate
        case next
        case afterAll = "afterall"
    }
    /// Describes how a new animate call interacts with currently-running animations.
    /// 
    /// If `immediate`, current animations are interrupted and the new animation is started. If `next`,
    /// the current frame is allowed to complete, after which the new animation is started. If
    /// `afterall` all existing frames are animated to completion before the new animation is started.
    public var mode: Mode? = nil

    /// The direction in which to play the frames triggered by the animation call
    public enum Direction: String, Encodable {
        case forward
        case reverse
    }
    /// The direction in which to play the frames triggered by the animation call
    public var direction: Direction? = nil

    /// Play frames starting at the current frame instead of the beginning.
    public var fromCurrent: Bool? = nil

    public struct Frame: Encodable {
        /// The duration in milliseconds of each frame.
        /// 
        /// If greater than the frame duration, it will be limited to the frame duration.
        public var duration: Double? = nil
    
        /// Redraw the plot at completion of the transition.
        /// 
        /// This is desirable for transitions that include properties that cannot be transitioned, but may
        /// significantly slow down updates that do not require a full redraw of the plot
        public var redraw: Bool? = nil
    
        /// Creates `Frame` object with specified properties.
        /// 
        /// - Parameters:
        ///   - duration: The duration in milliseconds of each frame.
        ///   - redraw: Redraw the plot at completion of the transition.
        public init(duration: Double? = nil, redraw: Bool? = nil) {
            self.duration = duration
            self.redraw = redraw
        }
        
    }
    public var frame: Frame? = nil

    public struct Transition: Encodable {
        /// The duration of the transition, in milliseconds.
        /// 
        /// If equal to zero, updates are synchronous.
        public var duration: Double? = nil
    
        /// The easing function used for the transition
        public var easing: Shared.Easing? = nil
    
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make
        /// both traces and layout change.
        public enum Ordering: String, Encodable {
            case layoutFirst = "layout first"
            case tracesFirst = "traces first"
        }
        /// Determines whether the figure's layout or traces smoothly transitions during updates that make
        /// both traces and layout change.
        public var ordering: Ordering? = nil
    
        /// Creates `Transition` object with specified properties.
        /// 
        /// - Parameters:
        ///   - duration: The duration of the transition, in milliseconds.
        ///   - easing: The easing function used for the transition
        ///   - ordering: Determines whether the figure's layout or traces smoothly transitions during updates
        ///   that make both traces and layout change.
        public init(duration: Double? = nil, easing: Shared.Easing? = nil, ordering: Ordering? = nil) {
            self.duration = duration
            self.easing = easing
            self.ordering = ordering
        }
        
    }
    public var transition: Transition? = nil

    /// Decoding and encoding keys compatible with Plotly schema.
    enum CodingKeys: String, CodingKey {
        case mode
        case direction
        case fromCurrent = "fromcurrent"
        case frame
        case transition
    }
    
    /// Creates `Animation` object with specified properties.
    /// 
    /// - Parameters:
    ///   - mode: Describes how a new animate call interacts with currently-running animations.
    ///   - direction: The direction in which to play the frames triggered by the animation call
    ///   - fromCurrent: Play frames starting at the current frame instead of the beginning.
    ///   - frame:
    ///   - transition:
    public init(mode: Mode? = nil, direction: Direction? = nil, fromCurrent: Bool? = nil, frame:
            Frame? = nil, transition: Transition? = nil) {
        self.mode = mode
        self.direction = direction
        self.fromCurrent = fromCurrent
        self.frame = frame
        self.transition = transition
    }
    
}