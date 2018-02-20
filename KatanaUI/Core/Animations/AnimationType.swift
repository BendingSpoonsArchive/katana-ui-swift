//
//  AnimationType.swift
//  Katana
//
//  Copyright © 2016 Bending Spoons.
//  Distributed under the MIT License.
//  See the LICENSE file for more information.

import Foundation
import CoreGraphics
import UIKit

/// Enum that represents the animations that can be used to animate an UI update
public enum AnimationType {

  /// No animation
  case none

  /// Linear animation with a given duration
  case linear(duration: TimeInterval)

  /// Linear animation with given duration and options
  case linearWithOptions(duration: TimeInterval,
                          options: UIViewAnimationOptions)

  /// Liear animation with given duration, options and delay
  case linearWithDelay(duration: TimeInterval,
               options: UIViewAnimationOptions,
                 delay: TimeInterval)

  /// Spring animation with duration, damping and initialVelocity
  case spring(duration: TimeInterval, damping: CGFloat, initialVelocity: CGFloat)

  /// Spring animation with duration, damping, initialVelocity and options
  case springWithOptions(duration: TimeInterval,
                          damping: CGFloat,
                  initialVelocity: CGFloat,
                          options: UIViewAnimationOptions)

  /// Spring animation with duration, damping, initialVelocity, options and delay
  case springWithDelay(duration: TimeInterval,
               damping: CGFloat,
       initialVelocity: CGFloat,
               options: UIViewAnimationOptions,
                 delay: TimeInterval)

}
